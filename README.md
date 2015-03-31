commanderAgent Cookbook
=======================
Installs an Electric Commander Agent on a a basic Linux OS VM
- Adds an 'ec' user with no-password-prompt sudo access
- Installs 32-bit libraries currently required for Commander agent
- Retrieves installer from an ftp location
- Installs Commander agent

knife cookbook upload commanderAgent

#------BOOTSTRAP-------------
nodeName=host
knife bootstrap -u root -P ChangeMe! -V --node-name $nodeName -r "recipe[commanderAgent]" -j '
{
"commander" : {
 	"ftp-user" : "******",
	"ftp-password" : "******",
	"ftp-host" : "74.85.3.84",
	"installer-path" : "commander/release_4.2/4.2.3.64287/linux/x86",
	"installer-file" : "ElectricCommander-4.2.3.64287",
	"installer-user-name" : "ec",
	"installer-user-password" : "ececec",	
	}
}' $nodeName

#------END BOOTSTRAP--------
knife node delete $nodeName

Requirements
------------
Currently only tested with CentOS 6.4 64-bit and Ubuntu 13.04 64-bit

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
#### commanderAgent::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['commanderAgent']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### commanderAgent::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `commanderAgent` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[commanderAgent]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Greg Maxey, Electric Cloud
