# eopa-ci-demo

This is an example demonstrating the use of Enterprise OPA and DAS in a CI/CD setting.

Currently, the instance(s) of EOPA used in the CI workflow will check in with DAS,
pull its bundles, and report their status and decision logs back to DAS.

Eventually, this should not happen: per-branch CI runs should take the policies from the
repository itself, and have EOPA run with those.

## Prerequirements

- docker compose
- hurl.dev

## Steps

Use `docker compose up --wait` to start everything. The first run will take particularly long,
because it's pulling images.

Then run `hurl` with the test/integration scripts, like

    hurl --test --glob 'test/integration/**/*.hurl' --report-html report

This command will create a neat little report html in the "report" directory.

## References

`openpolicyagent/restful-demo-api` [can be found here](https://github.com/open-policy-agent/contrib/tree/main/api_authz)
