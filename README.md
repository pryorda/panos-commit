## Panos-Commits
### This is all from the terraform-provider-panos repo. I wanted to compile this commit command for multiple distro's

As of right now, Terraform does not provide native support for commits, so
commits are handled out-of-band.  Please use the following for commits:

Compile the above, put it somewhere in your `$PATH` (such as `$HOME/bin`),
then invoke it after `terraform apply` and `terraform destroy`:

```bash
$ make bin
$ cp -Rp pkg/OS_ARCH/panos-commit ~/bin
$ terraform apply && panos-commit -c 'My commit comment'
```

## Variables
Connection information for the above is expected to be set as environment
variables:

* `PANOS_HOSTNAME`
* `PANOS_API_KEY` - This is optional, but `PANOS_USERNAME` and `PANOS_PASSWORD`
  will be ignored if this is configured.
* `PANOS_USERNAME` - Required if `PANOS_API_KEY` is unset
* `PANOS_PASSWORD` - Required if `PANOS_API_KEY` is unset

## Create Archive

` cd pkg && tar cvzf ~/git/place/pan-commit.tgz darwin_amd64 linux_amd64 windows_amd64 `