import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";

using TypeSpec.Http;
@service({
  title: "Application Service",
  version: "1.0.0",
})
namespace AppService;

model Component {
  name: string;
  type: "stateless" | "task";
  port: int16
}

model PathPort {
  path: string;
  port: int16;
}

model Trait {
  type: "security" | "ingress";
  domain: string;
  protocol: "http" | "tcp";
  path_ports: PathPort[];
}

model Application {
  @visibility("read", "update")
  @path
  id: string;
  name: string;
  image: string;  
}

@error
model Error {
  code: int32;
  message: string;
}

@route("/applications")
@tag("Applications")
interface Applications {
  @get list(): Application[] | Error;
  @get read(@path id: string): Application | Error;
  @post create(...Application): Application | Error;
  @patch update(...Application): Application | Error;
  @delete delete(@path id: string): void | Error;
  @route("{id}/analyze") @post analyze(@path id: string): string | Error;
}
