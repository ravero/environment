## Hakan Satya Personal Environment

My personal environment settings and tools. To bootstrap the setup on a blank machine just run the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ravero/environment/master/env-bootstrap.sh)"
```

## Suggested Setup Scripts Order

The first script to run is the `setup_network.sh` that changes the DNS settings of the adapters to Cloudfare.

First, verify that the App Store is correctly logged-in. Then run the following scripts on the suggested order.

01. [Install Terminal](setup/inst_terminal.sh)
02. [Install Browsers](setup/inst_browsers.sh)
    * Then Setup Choosy
03. [Install Social](setup/inst_social.sh)
04. [Install Developer Tools](setup/inst_dev.sh)
05. [Install Productivity](setup/inst_productivity.sh)
06. [Install Utils](setup/inst_utils.sh)
07. [Install CLI Utils](setup/inst_cli.sh)
08. [Install Fonts](setup/inst_fonts.sh)
09. [Install Optionals](setup/inst_opts.sh)

## Other Downloads

* [Visual Studio for Mac](https://visualstudio.microsoft.com/vs/mac/): the brew formula is broken, install only the IDE without any component.
* [Setapp](https://setapp.com)
* [Replacicon](https://replacicon.app): Easily customize application icons.