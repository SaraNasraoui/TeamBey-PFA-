import 'package:flutter/material.dart';
import 'package:mobile/presentation/post_project/post_project_page.dart';
import 'package:mobile/presentation/shared/profile_picture.dart';

class CreateProject extends StatelessWidget {
  const CreateProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(PostProjectPage.route);
      },
      child: Card(
          elevation: 5,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const ProfilePicture(),
              title: Text(
                'Post A New Project Idea !',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.grey),
              ),
            ),
          )),
    );
  }
}