import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:personal_portfolio/controller/contact.dart';
import 'package:personal_portfolio/controller/project.dart';

import './portfoliodata.dart';

class PortfolioController extends GetxController {
  static final dio = Dio();
  List<String> services = [];
  List<String> service_details = [];
  Contacts my_contact =
      Contacts(phoneNumber: '', emialAdress: '', location: '');
  final Portfolios _portfolio =
      Portfolios(name: '', aboutMe: '', imageUrl: '', services: {});

  List<Projects> _projects = [];
  List<Projects> get projectData => _projects;

  Portfolios get PortfolioData => _portfolio;

  Future<void> FetchPortfolio() async {
    final response = await dio.get(
        "https://portfolio-8d96a-default-rtdb.firebaseio.com/PortfolioData.json");
    try {
      final Map<String, dynamic> data =
          Map<String, dynamic>.from(response.data);

      _portfolio.name = data['Portfolio']['p1']['name'];
      _portfolio.aboutMe = data['Portfolio']['p1']['aboutMe'];
      _portfolio.imageUrl = data['Portfolio']['p1']['imageUrl'];
//For services that i will give i fetched and set data on the below code
      Iterable<String> serviceTitle = data['Portfolio']['p1']['services'].keys;
      for (final key in serviceTitle) {
        services.add(key);
      }
      Iterable<dynamic> serviceDetails =
          data['Portfolio']['p1']['services'].values;
      for (final value in serviceDetails) {
        service_details.add(value);
      }

      // For projects that i worked on i will fetch and set a dara below
      var projectsData = data['Portfolio']['p1']['Projects'];
      _projects.clear();
      for (var projectKey in projectsData.keys) {
        var projectData = projectsData[projectKey];

        final fetchedProject = Projects(
          projectName: projectData['projectName'],
          projectUrl: projectData['projectUrl'],
          projectImageUrl: projectData['projectImageUrl'],
          projectDescripttion: projectData['projectDescription'],
        );

        _projects.add(fetchedProject);
      }

// For Contacts that i worked on i will fetch and set a dara below
      Iterable<dynamic> contacts = data['Portfolio']['p1']['contact'].values;

      for (final value in contacts) {
        my_contact.phoneNumber =
            data['Portfolio']['p1']['contact']['phoneNumber'].toString();
        my_contact.emialAdress =
            data['Portfolio']['p1']['contact']['email']; // Fix the typo here
        my_contact.location = data['Portfolio']['p1']['contact']['location'];
      }

      update();
      print(data);
    } catch (error) {
      print('Error: ${error}');
    }
  }
}
