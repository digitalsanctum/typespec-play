# typescript play

Typescript, aka CADL, is a language for describing cloud service APIs and generating other API description languages, client and service code, documentation, and other assets. TypeSpec provides highly extensible core language primitives that can describe API shapes common among REST, OpenAPI, GraphQL, gRPC, and other protocols.

Using TypeSpec, you can create reusable patterns for all aspects of an API, along with the ability to check for and flag known anti-patterns. These patterns establish "guardrails" for API designers and make it easier to follow best practices than deviate from them. TypeSpec promotes highly regular API designs that adhere to best practices by construction.

## Install

```
npm install -g @typespec/compiler
npm install -g swagger-ui-cli
```

## Compile

```
tsp compile .
```


## Open generated openapi.yaml in Swagger UI
```
swagger-ui --port 3000 tsp-output/\@typespec/openapi3/openapi.yaml
```


## References

* [microsoft/typespec GitHub repository](https://github.com/microsoft/typespec)
* [TypeSpec Data Types](https://microsoft.github.io/typespec/getting-started/typespec-for-openapi-dev#data-types)
* [CADL playground](https://cadlplayground.z22.web.core.windows.net/)
