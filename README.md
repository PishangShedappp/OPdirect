# OPdirect

<a href="https://Ko-fi.com/pishangshedappp"><img align="right" src="https://uploads-ssl.webflow.com/5c14e387dab576fe667689cf/5cbed8a433a3f45a772abaf5_SupportMe_blue.png" width="30%" height="30%"/></a>
<a href="https://twitter.com/ahazriq7872"><img src="https://i.imgur.com/qEGidBc.png" width="5%" height="5%"/></a>

OPdirect is a tool to automate open redirect from a website. This tool helps bug bounty hunter and penetration tester to get open redirect vulnerability for the domain they are targeting. OPdirect use some other tool like [waybackurls](https://github.com/tomnomnom/waybackurls) and other linux command.

[Waybackurls](https://github.com/tomnomnom/waybackurls) is a tool that be used for crawling domains on stdin.

# Screenshot
![OPdirect](https://raw.githubusercontent.com/PishangShedappp/OPdirect/main/img/OPdirect.png)

# Installation
```
git clone https://github.com/PishangShedappp/OPdirect.git
cd OPdirect
chmod +x install.sh && chmod +x opdirect
sudo ./install.sh
```

Then you can access opdirect globally

# Usage
Short Form    | Long Form     | Description
------------- | ------------- |-------------
-d            | --domain      | Add your target domain (e.g -d target.com)
-v            | --version     | Get your current version of OPdirect
-u            | --update      | Update OPdirect to new version if available
-h            | --help        | To view flags and usage

# Examples
- Basic usage
```
opdirect -d target.com
```
- To get your current version of OPdirect
```
opdirect -v
```
- To update your opdirect to the latest version
```
opdirect -u
```
- To view help message
```
opdirect -h
```
