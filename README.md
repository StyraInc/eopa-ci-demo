# eopa-ci-demo

This is an example demonstrating the use of Enterprise OPA and DAS in a CI/CD setting.

Currently, the instance(s) of EOPA used in the CI workflow will NOT use anything from DAS.

Eventually, this is what should happen: per-branch CI runs should take the policies from the
repository itself, and have EOPA run with those; fill whatever blanks exist with libraries
etc from DAS, as configured.

## Prerequirements

- docker compose

## Steps

Use `docker compose up --wait` to start everything. The first run will take particularly long,
because it's pulling images.

Then run `hurl` with the test/integration scripts, 

    docker compose run integration-tests

If you have [`hurl`](https://hurl.dev) installed locally, you can also try

    hurl --test --glob 'test/integration/**/*.hurl' --report-html report

This command will create a neat little report html in the "report" directory.

## References

- The Spring Boot demo was taken from [this blog post](https://sultanov.dev/blog/externalized-authorization-using-opa-and-spring-security/),
  and the code imported from [this repo](https://github.com/anarsultanov/examples/tree/c42d8bf1ea69d5ac3b94e54c552f6dc5a6cad509/spring-security-opa-authz).

  Changes:
  - the hardcoded OPA location
  - policy code was updated
  - pom.xml was adjusted, and a Dockerfile added
