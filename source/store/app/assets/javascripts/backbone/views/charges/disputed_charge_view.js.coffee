# If Store.Views.Charges doesn't exist, set it to an empty object.
Store.Views.Charges ||= {}

class Store.Views.Charges.DisputedChargeView extends Store.Views.Charges.ChargeView
  template: JST["backbone/templates/charges/disputed_charge"]
