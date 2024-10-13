import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        title: Text("Favourite Person"),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: favouritePersonController.persons.length,
          itemBuilder: (context, index) {
            final person = favouritePersonController.persons[index];
            return ListTile(
              leading: CircleAvatar(child: Text(person.initial)),
              title: Text(person.name),
              subtitle: Text(person.bankAccount),
              trailing: Icon(Icons.delete),
              onTap: () {
                favouritePersonController.deletePerson(person.id!);
              },
            );
          },
        );
      }),
    );
  }
}
