React = require 'react'
ReactCardFormContainer = require '../src/coffee/card.cjsx'

CardLoader = React.createClass

  displayName: "CardLoader"

  render: ->

    <div>
      <ReactCardFormContainer

        container="react-card-container"

        formInputsNames={
          number: 'CCnumber', # optional — default input[name = "number"]
          expiry: 'CCexpiry', # optional — default input[name = "expiry"]
          cvc: 'CCcvc', # optional — default input[name = "cvc"]
          name: 'CCname' # optional - defaults input[name = "name"]
        }

        initialExpiry='16/12'
        initialName='Michael Jordan'
        # the class to add to the form input and the corresponding card element when the input is valid or invalid.
        classes={
          valid: 'valid', # optional — default 'jp-card-valid'
          invalid: 'invalid' # optional — default 'jp-card-invalid'
        }

      >
          <form>
            <input placeholder="Full name" type="text" name="CCname" />
            <input placeholder="Card number" type="text" name="CCnumber" />
            <input placeholder="MM/YY" type="text" name="CCexpiry" />
            <input placeholder="CVC" type="text" name="CCcvc" />
          </form>
      </ReactCardFormContainer>
      <div id="react-card-container"></div>
    </div>


React.render <CardLoader />, document.getElementById 'demo-container'
