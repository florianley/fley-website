# hugo-toha.github.io

[![Netlify Status](https://api.netlify.com/api/v1/badges/b1b93b02-f278-440b-ae1b-304e9f4c4ab5/deploy-status)](https://app.netlify.com/sites/toha/deploys) [![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fhugo-toha%2Fhugo-toha.github.io%2Fbadge%3Fref%3Dmain&style=flat)](https://actions-badge.atrox.dev/hugo-toha/hugo-toha.github.io/goto?ref=main) ![Repository Size](https://img.shields.io/github/repo-size/hugo-toha/hugo-toha.github.io) ![Contributor](https://img.shields.io/github/contributors/hugo-toha/hugo-toha.github.io) ![Last Commit](https://img.shields.io/github/last-commit/hugo-toha/hugo-toha.github.io) ![License](https://img.shields.io/github/license/hugo-toha/hugo-toha.github.io) ![Open Issues](https://img.shields.io/github/issues/hugo-toha/hugo-toha.github.io?color=important) ![Open Pull Requests](https://img.shields.io/github/issues-pr/hugo-toha/hugo-toha.github.io?color=yellowgreen) ![Security Headers](https://img.shields.io/security-headers?url=https%3A%2F%2Fhugo-toha.github.io%2F) [![This project is using Percy.io for visual regression testing.](https://percy.io/static/images/percy-badge.svg)](https://percy.io/b7cb60ab/hugo-toha.github.io)



# Florian LEY website 

This repo are sources for my [personal website](https://florianley.com/#home)

A [Hugo](https://gohugo.io/) theme for a personal portfolio with minimalist design and responsiveness. Builded with [Toha]( https://themes.gohugo.io/themes/toha/) theme 

![Thumbnail](assets/images/site/screenshot.png)


- **Documentation:** [toha-guides.netlify.app](https://toha-guides.netlify.app/posts)


## Requirements

- Hugo Version 0.118.0 (extended) or higher
- Go language 1.18 or higher (require for hugo modules)
- Node version v18.x or later and npm 8.x or later.

## Usage

The easiest way to use this theme is to fork [hugo-toha.github.io](https://github.com/hugo-toha/hugo-toha.github.io) sample repo.Then change the configurations according to your need.

If you want to start from scratch, then follow these steps:

##### 1. Initialize Hugo module on you repo

At first, initialize [Hugo modules](https://gohugo.io/hugo-modules/) in your repo. This will create a `go.mod` file.

```bash
hugo mod init github.com/<your username>/<your repo name>
```

##### 2. Add this theme as your module dependency

Now, in your `config.yaml` file, add a `module` section.

```yaml
# Use Hugo modules to add theme
module:
  imports:
  - path: github.com/hugo-toha/toha/v4
```

Check this sample [config.yaml](https://github.com/hugo-toha/hugo-toha.github.io/blob/main/config.yaml) for further reference.

##### 3. Update your module

Now, run this command to load this theme as your module.

```bash
hugo mod tidy
```

#### Running Locally

Now, you can run your hugo site locally with the following steps:

##### 1. Generate node dependency configuration

Now run the following command to generate node dependency configuration. This will create the a `package.json` file in you repo.

```bash
hugo mod npm pack
```

##### 2. Install dependencies

Install the node dependencies using following command:
```bash
npm install
```

##### 3. Run your site

Now, run you site locally using following command.

```bash
hugo server -w
```

When you run your site for first time, it will start with the default parameters. It should look similar to the [example site](https://hugo-toha.github.io). However, it will not have any sections in the homepage as we haven't configured them yet. You can configure your site by following the guides from [here](https://toha-guides.netlify.app/posts/configuration/).


## Contributing

> I am not a web developer. I have created this theme for my personal needs. So, it is reasonable to have some flaws in the codes. Feel free to open issues and PRs acknowledging the problems.

## Local Development

For local development, you can make changes in the theme submodule and test the changes against your own site or this [example site](https://github.com/hugo-toha/hugo-toha.github.io) locally.



**Run your site locally:**

```bash
$ hugo server -w
```

From there you can make changes to the source code of the theme while testing with your running Hugo site or the example site.


## Attribution

- Thanks [Anup Deb](https://dribbble.com/anupdeb) for his design guidance.
- Many of the illustrations have been taken from [iconscout](http://iconscout.com/).
