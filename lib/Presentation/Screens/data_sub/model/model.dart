class DataPlan {
  final String amount, data, duration;

  DataPlan({required this.amount, required this.data, required this.duration});
}

final List<DataPlan> dataPlan = <DataPlan>[
  DataPlan(amount: '25.00', data: '250MB', duration: '1M'),
  DataPlan(amount: '25.00', data: '250MB', duration: '1M'),
  DataPlan(amount: '25.00', data: '250MB', duration: '1M'),
  DataPlan(amount: '25.00', data: '250MB', duration: '1M'),
  DataPlan(amount: '25.00', data: '250MB', duration: '1M'),
  DataPlan(amount: '25.00', data: '250MB', duration: '1M'),
];
