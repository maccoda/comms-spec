# Comms-Spec
Communicator specification to allow for an agreed protocol to be used for the
communicator client and server implementation.

Was decided to use [gRPC](http://www.grpc.io/docs/quickstart/) since we are to
be using [protocol buffers](https://developers.google.com/protocol-buffers/) to
allow for cross language communication.

## Specification
### Messaging Queue
[gRPC](http://www.grpc.io/docs/quickstart/)

### Messaging Architecture
For convenience will use server/client architecture. This may mean that the
server requires some caching and other work to do this.

### Message Format
[Protocol buffers](https://developers.google.com/protocol-buffers/).

Documentation for writing protocol buffers can be found
[here](https://developers.google.com/protocol-buffers/docs/proto3)
#### Types of messages
The concept of gRPC is that services are defined that will occur between the
client and server. These services can be thought of as functions where the
client provides the input and the server the output. Therefore it is required
that we define both all the services required and all information required in
the request and reply types. For the used protocol buffer refer to
[message.proto](message.proto).

Was going to put the explanation of the fields here but hey the code never lies
so go have a look for yourself.
