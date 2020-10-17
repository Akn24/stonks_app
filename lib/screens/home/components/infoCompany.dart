import 'package:flutter/material.dart';
import 'package:stonksapp/screens/info/info_screen.dart';
import 'infoCard.dart';

class InfoCompany extends StatelessWidget {
  final String title , svgSrc;
  final Function press;
  const InfoCompany({
    Key key, this.title, this.svgSrc, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: Row(
            children: <Widget>[
              InfoCard(
                svgSrc:"assets/icons/Infosys-01.svg",
                companyname:"Infosys",
                press: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => InfoScreen(companyName: "Infosys",details: "Infosys Limited is engaged in consulting, technology, outsourcing and next-generation services. The Company, along with its subsidiaries, provides business information technology services comprising application development and maintenance, independent validation, infrastructure management, engineering services comprising product engineering and life cycle solutions and business process management; consulting and systems integration services comprising consulting, enterprise solutions, systems integration and advanced technologies; products, business platforms and solutions to accelerate intellectual property-led innovation, including Finacle, its banking solution, and offerings in the areas of Analytics, Cloud and Digital Transformation. Its segments are Financial Services and Insurance (FSI), Manufacturing and Hi-tech (MFG & Hi-TECH), Energy & utilities, Communication and Services (ECS), Retail, Consumer packaged goods and Logistics (RCL), and Life Sciences and Healthcare (LSH).",)),
                  );
                },
              ),
              InfoCard(
                svgSrc:"assets/icons/apple.svg",
                companyname: "Apple",
                press: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => InfoScreen(companyName: "Apple",details: "Apple Inc. designs, manufactures and markets mobile communication and media devices, personal computers and portable digital music players. The Company sells a range of related software, services, accessories, networking solutions, and third-party digital content and applications. The Company's segments include the Americas, Europe, Greater China, Japan and Rest of Asia Pacific. The Americas segment includes both North and South America. The Europe segment includes European countries, India, the Middle East and Africa. The Greater China segment includes China, Hong Kong and Taiwan. The Rest of Asia Pacific segment includes Australia and the Asian countries not included in the Company's other operating segments. Its products and services include iPhone, iPad, Mac, iPod, Apple Watch, Apple TV, a portfolio of consumer and professional software applications, iPhone OS (iOS), OS X and watchOS operating systems, iCloud, Apple Pay and a range of accessory, service and support offerings.",)),
                  );
                },    
              ),
            ],
        ),
    );
  }
}
