class InvestorModel {
  String name;
  String imagePath;
  String description;

  InvestorModel({
    required this.name,
    required this.imagePath,
    required this.description,
  });

  static List<InvestorModel> getInvestor() {
    List<InvestorModel> investor = [];

    investor.add(
      InvestorModel(
          name: 'Timothy Ronald',
          imagePath: "assets/icons/businessman1.png",
          description: 'Investment Analyst CompanyFour'),
    );

    investor.add(
      InvestorModel(
          name: 'David Reynaldi',
          imagePath: "assets/icons/businessman2.png",
          description: 'CEO Gadgetin Indonesia'),
    );

    investor.add(
      InvestorModel(
        name: 'Jonathan',
        imagePath: "assets/icons/businessman3.png",
        description: 'CFO BukaModal Indonesia',
      ),
    );
    return investor;
  }
}
