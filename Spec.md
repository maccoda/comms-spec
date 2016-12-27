# Specification
## Messaging Queue
To decide on library from:
* [Zero MQ](http://zeromq.org/) Faster, more bare bones
* [Rabbit MQ](http://www.rabbitmq.com/) Slower, more feature-rich

## Messaging Architecture
For convenience will use server/client architecture. This may mean that the server requires some caching and other work to do this. Believe [Rabbit MQ](http://www.rabbitmq.com/) does have this baked in.

## Message Format
Will be a JSON format.
### Types of messages
To allow a single message type to be sent across the queue it will need to be determined what action is to be performed due to this message. Therefore will use a field `type` which is an enumeration defining the action being requested.

Possible types include:
* `message` - a normal message in conversation
* `initiate` - start a new conversation
* `terminate` - exit a conversation

### Example
```json
message {
  type: "message",
  from: "sender",
  messageContent: "content",
  conversationId: 1,
  recipients: [
    {...}
  ],
  timestamp: "time"
}
```

# TODO:
- [ ] Required content
- [ ] Stretch goal content
- [ ] Structuring of message
- [ ] Choose messaging queue library
- [ ] Determine client/server & server/client interfaces
