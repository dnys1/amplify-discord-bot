#!/usr/bin/env node
import "source-map-support/register";
import { App, Stack, StackProps } from "aws-cdk-lib";
import { Construct } from "constructs";
import { DiscordBot } from "discord-bot-deploy";
import * as ssm from "aws-cdk-lib/aws-ssm";
import * as path from "path";
import * as process from "process";

class AutothreaderStack extends Stack {
  constructor(scope: Construct, id: string, props?: StackProps) {
    super(scope, id, props);

    const discordBotToken = this.secretParam(
      this,
      DiscordBot.discordBotTokenEnv
    );
    const githubPrivateKey = this.secretParam(
      this,
      DiscordBot.githubPrivateKeyEnv
    );
    const githubRepos = this.ssmParamFromEnv(DiscordBot.githubReposEnv);
    const githubAppId = this.ssmParamFromEnv(DiscordBot.githubAppIdEnv);

    new DiscordBot(this, "DiscordBot", {
      dockerPath: path.join(__dirname, "..", ".."),
      discordBotToken,
      githubIntegration: {
        githubAppId,
        githubRepos,
        githubPrivateKey,
      },
    });
  }

  /**
   * Retrieves the SecureString SSM parameter for `name`.
   * @param construct The host stack.
   * @param name The environment variable's name.
   * @returns The SSM parameter construct.
   */
  private secretParam(construct: Construct, name: String): ssm.IParameter {
    return ssm.StringParameter.fromSecureStringParameterAttributes(
      construct,
      `SsmParameter_${name}`,
      {
        parameterName: `/autothreader/${name}`,
      }
    );
  }

  /**
   * Creates an SSM paramter from an environment variable.
   * @param name The environment variable's name.
   * @returns The SSM parameter construct.
   */
  private ssmParamFromEnv(name: string): ssm.IParameter {
    const value = process.env[name];
    if (!value || value === "") {
      throw Error(`No ${name} env set`);
    }
    return new ssm.StringParameter(this, `SsmParameter_${name}`, {
      parameterName: `/autothreader/${name}`,
      stringValue: value,
    });
  }
}

const app = new App();
new AutothreaderStack(app, "AutothreaderStack", {
  env: {
    region: "us-west-1"
  }
});
