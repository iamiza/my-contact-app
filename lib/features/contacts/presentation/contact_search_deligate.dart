import 'package:flutter/material.dart';

class ContactSearchDelegate extends SearchDelegate<String> {
  List<String> name;
  List<String> phoneNo;
  ContactSearchDelegate(this.name, this.phoneNo);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, "");
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = query.isEmpty
        ? name
        : name
            .where((element) =>
                element.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.person_2_outlined),
        title: Text(suggestionList[index]),
        subtitle: Text(phoneNo[index]),
        trailing: Icon(Icons.call),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Column();
  }
}
