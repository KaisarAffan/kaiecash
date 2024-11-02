import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/Widget/list_card.dart';
import 'package:kaiecash/page/controller/favourite_person_controller.dart';

class FavouritedPersonListView extends StatefulWidget {
  const FavouritedPersonListView({super.key});

  @override
  State<FavouritedPersonListView> createState() =>
      _FavouritedPersonListViewState();
}

class _FavouritedPersonListViewState extends State<FavouritedPersonListView> {
  final FavouritePersonController favouritePersonController = Get.find();

  @override
  Widget build(BuildContext context) {
    favouritePersonController.loadPerson();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Favourite Person"),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: favouritePersonController.persons.length,
          itemBuilder: (context, index) {
            final person = favouritePersonController.persons[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: PersonCard(
                leading: person.initial,
                title: person.name,
                subtitle: person.bankAccount,
                trailing: Icons.delete,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Delete Confirmation'),
                        content: Text(
                            'Are you sure you want to delete ${person.name}?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              favouritePersonController
                                  .deletePerson(person.id!);
                              Navigator.of(context).pop();
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      }),
    );
  }
}
