import * as React from "react";
import "./App.css";

import { HelloRequest } from "./pb/helloworld_pb";
import { GreeterClient } from "./pb/HelloworldServiceClientPb";

const initialState = {
  inputText: "World!",
  message: ""
};
type State = Readonly<typeof initialState>;

class App extends React.Component<{}, State> {
  public readonly state: State = initialState;

  public render() {
    return (
      <div className="App">
        <input
          type="text"
          value={this.state.inputText}
          onChange={this.onChange}
        />
        <button onClick={this.onClick}>Send</button>
        <p>{this.state.message}</p>
      </div>
    );
  }

  private onClick = () => {
    console.log('click');
    const request = new HelloRequest();
    request.setName(this.state.inputText);

    const client = new GreeterClient("0.0.0.0:8080", {}, {});
    console.log('call say');
    client.sayHello(request, {}, (err, ret) => {
      console.log('response');
      if (err || ret === null) {
        throw err;
      }
      this.setState({ message: ret.getMessage() });
    });
  };

  private onChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    this.setState({ inputText: e.target.value });
  };
}

export default App;