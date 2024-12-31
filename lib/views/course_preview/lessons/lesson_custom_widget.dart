import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

import '../../../utils/constants/custome_widgets/button_widget.dart';


class Lesson {
  final String title;
  final String duration;
  final bool isLocked;

  Lesson({required this.title, required this.duration, required this.isLocked});
}


class Section {
  final String title;
  final String duration;
  final List<Lesson> lessons;

  Section({required this.title, required this.duration, required this.lessons});
}

class CourseLessonsPage extends StatelessWidget {
  final List<Section> sections = [
    Section(
      title: "Section 1 - Introduction",
      duration: "15 Min",
      lessons: [
        Lesson(title: "Introduction to Design Thinking", duration: "05:00", isLocked: false),
        Lesson(title: "Introduction to Design Thinking", duration: "05:00", isLocked: false),
      ],
    ),
    Section(
      title: "Section 2 - Fundamentals",
      duration: "15 Min",
      lessons: [
        Lesson(title: "Introduction to Design Thinking", duration: "05:00", isLocked: true),
        Lesson(title: "Introduction to Design Thinking", duration: "05:00", isLocked: true),
        Lesson(title: "Introduction to Design Thinking", duration: "05:00", isLocked: true),
        Lesson(title: "Introduction to Design Thinking", duration: "05:00", isLocked: true),
        Lesson(title: "Introduction to Design Thinking", duration: "05:00", isLocked: true),
        Lesson(title: "Introduction to Design Thinking", duration: "05:00", isLocked: true),
      ],
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Container(
        child: ListView.builder(
          itemCount: sections.length,
          itemBuilder: (context, sectionIndex) {
            final section = sections[sectionIndex];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Lessons (45)",style: TextStyle(fontSize:size.subtitleFontsize ,fontWeight: FontWeight.w500,
                    color: themeController.isDarkMode.value ? newprimaryColor : black),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      section.title,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize:size.contentFontSize,
                      color: themeController.isDarkMode.value ? darkgray : black),
                    ),
                    Text(
                      section.duration,
                      style: TextStyle(color: themeController.isDarkMode.value ? white : newprimaryColor,fontSize:size.contentFontSize),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                // Lessons List
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: section.lessons.length,
                  itemBuilder: (context, lessonIndex) {
                    final lesson = section.lessons[lessonIndex];
                    return Container( height: 60,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(42),
                            border: Border.all(color: darkgray.withOpacity(.4))),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            CircleAvatar(
                              backgroundColor: lesson.isLocked
                                  ? darkgray
                                  : newprimaryColor,
                              child: Text(
                                "${lessonIndex + 1}",
                                style: TextStyle(
                                  color: white,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(lesson.title,style: TextStyle(fontSize:size.contentFontSize ,fontWeight: FontWeight.w500 ,
                                color: themeController.isDarkMode.value ? darkgray : black),),
                                Text(lesson.duration,style: TextStyle(fontSize:size.contentFontSize ,fontWeight: FontWeight.w500,
                                color: themeController.isDarkMode.value ? darkgray : black),),

                              ],
                            ),
                            Icon(
                              lesson.isLocked ? Icons.lock : Icons.play_circle,
                              color: lesson.isLocked ? darkgray : newprimaryColor,
                            ),
                          ],
                        )

                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

