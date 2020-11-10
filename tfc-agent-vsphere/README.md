# tfc-agent-vsphere
simple packer example to run tfc-agent on a vsphere vm

## Steps
1. Create an [agent token](https://www.terraform.io/docs/cloud/workspaces/agent.html) and set it as the `TFC_AGENT_TOKEN` environment variable.
2. Export your vCenter Server password as the `VCENTER_PASSWORD` environment variable. On some operating systems you can copy the password to your clipboard and use pbpaste like so:
```
export VCENTER_PASSWORD=`pbpaste`
```
3. Set your VM name on line 3 of the Packer template.
4. Run `packer build tfc-agent-vsphere.json`
5. Once the image has been created, you'll need to power it on.

## Futures
* We can provide vSphere provider arguments like `vsphere_server`, `user`, and `password` to the tfc-agent directly, eliminating the need for consumers to set these values in their Terraform Cloud workspaces. 