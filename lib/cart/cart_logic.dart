class CartLogic {
  /// list to store all the subscriptions offered by the company
  List subscriptions1Values = [
    [
      "AgroGIS Eye",
      "Is the solution for farms that want to monitor crops constantly over time",
      "25€"
    ],
    [
      "AgroGIS+",
      "AgroGIS + is the customizable solution to manage the different needs of the farm",
      "75€"
    ],
    [
      "AgroGIS Starter",
      "AgroGIS starter is the solution for small farms up to 50 hectares that want to monitor crops in an innovative way.",
      "100€"
    ]
  ];

  /// list to store all the subscriptions offered by the company
  List subscriptions2Values = [
    [
      "GrapeDSS",
      "GrapeDSS is the solution for farms that want to optimize vineyard management in a sustainable way",
      "130€"
    ],
    [
      "Oliwes",
      "OLIWES is the solution for farms that want to optimize the management of olive groves in a sustainable way.",
      "45€"
    ],
    [
      "TobaccoDSS",
      "TOBACCODSS is the solution for farms that want to optimize the management of their fields in a sustainable way",
      "100€"
    ]
  ];

  /// method to return the subscriptions values
  List getSubscriptions1Values() {
    return subscriptions1Values;
  }

  /// method to return the subscriptions values
  List getSubscriptions2Values() {
    return subscriptions2Values;
  }
}
