import React from 'react'

const FormErrors = (props) =>
  <div>
    {Object.keys(props.formErrors).map((formErrorField) => {
      return (
        props.formErrors[formErrorField].map((error) => {
          return (
            <p key={formErrorField}>{formErrorField} {error}</p>
          )
        })
      )
    })}
  </div>

export default FormErrors
