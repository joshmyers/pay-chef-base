# pay-chef-base-cookbook

What?
-----
A chef base cookbook which pre bakes AMI's with:

  * docker service

  ```
  joshmyers@ip-172-31-42-134:~$ ps aux | grep docker
root       838  0.2  1.9 320184 20172 ?        Ssl  14:26   0:00 /usr/bin/docker daemon --log-driver=syslog --log-opt syslog-address=tcp://127.0.0.1:5514 --log-opt
  ```

  * users (see: data_bags/users)

  ```
  joshmyers@ip-172-31-42-134:~$
  ```
  * new_relic_agent (license key pulled via credstash)
  * 
  ```
  joshmyers@ip-172-31-42-134:~$ ps aux | grep relic
newrelic  1162  0.0  0.0  16964   640 ?        Ss   14:26   0:00 /usr/sbin/nrsysmond -c /etc/newrelic/nrsysmond.cfg -p /var/run/newrelic/nrsysmond.pid
  ```

## Supported Platforms

Ubuntu 12.04 (maybe others)

## Usage

CI builds an AMI using Packer if branch is master and uploads to AWS.

CI machine needs an IAM policy which allows it access to Credstash table.

### pay-chef-base::default

Include `pay-chef-base` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[pay-chef-base::default]"
  ]
}
```

## License and Authors

Author:: Josh Myers (josh.myers@digital.cabinet-office.gov.uk)
