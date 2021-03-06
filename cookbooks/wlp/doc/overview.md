The __wlp__ cookbook installs and configures the WebSphere Application Server Liberty Profile.
It provides recipes, resources, and libraries for creating, managing, and configuring Liberty profile server instances.

## Basic configuration

The __wlp__ cookbook can install Liberty profile from jar archive files or a zip file. The installation method is configured via the `node[:wlp][:install_method]` attribute. 

### jar installation

When the jar archive files installation method (jar installation) is used, the `node[:wlp][:archive][:base_url]` attribute must be set to specify the base location from which the Liberty jar archive files can be downloaded. Use the `node[:wlp][:archive][:runtime][...]`, `node[:wlp][:archive][:extended][...]`, and `node[:wlp][:archive][:extras][...]` attributes to adjust jar archive file names, checksums, and other installation options. For more information on these options, see the attributes section later in this readme. You must also set the `node[:wlp][:archive][:accept_license]` attribute to `true` if you agree and accept the license terms of the Liberty profile software. The jar installation fails if `node[:wlp][:archive][:accept_license]` is not set to `true`. 


By default the cookbook is configured to use the jar installation method. The archive options are already configured with values based on developer licensed Liberty profile. 

The no-fee developer licensed Liberty profile jar archive files can be downloaded from [Liberty download page](https://www.ibmdw.net/wasdev/downloads/websphere-application-server-liberty-profile/) on [WASdev](https://www.ibmdw.net/wasdev) site. The production licensed Liberty profile jar archive files can be obtained from [IBM Passport Advantage](http://www-01.ibm.com/software/lotus/passportadvantage/).

### zip installation

When the zip installation method is used, only the `node[:wlp][:zip][:url]` attribute must be set to specify the location of the zip file. The zip file is assumed to be generated by running the `./bin/server package` Liberty command with the  `--include=all` or `--include=minify` option.


