import 'package:flutter/material.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartScreen extends StatelessWidget {
  final String imageUrl = "https://pngimg.com/d/student_PNG62539.png";
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                height: 500,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.red.shade100,
                      Colors.red,
                    ],
                  ),
                ),
                child: Image.asset(
                  "assets/images/image.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 70),
              const Text(
                "Welcome to my English course!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return MyApp2();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red.shade900,
                      width: 4,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "START",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  String image = "https://www.flaticon.com/free-icon/math_3426679";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 199, 199, 10),
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "rasm/image1.png",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              style: IconButton.styleFrom(backgroundColor: Colors.grey),
            ),
            title: const Text("Hi, Mile Morales 👋"),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notification_add))
            ],
          ),
          body: MainBody(),
        ));
  }
}

class MainBody extends StatelessWidget {
  String image = "https://www.flaticon.com/free-icon/math_3426679";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.blue),
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Discover How\nTo Be Creative\n to Our Course",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 40,
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.network(
                    "rasm/image4.png",
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Teachers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "See All",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 105,
                width: 70,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.network(
                      "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
                      width: 100,
                    ),
                    const Text("Mr smith"),
                  ],
                ),
              ),
              Container(
                height: 95,
                width: 70,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.network(
                        "https://cdn-icons-png.flaticon.com/128/4202/4202843.png"),
                    const Text(
                      "G'ani",
                    ),
                  ],
                ),
              ),
              Container(
                height: 95,
                width: 70,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(
                        height: 70,
                        width: 70,
                        child: Image.network(
                            "https://cdn-icons-png.flaticon.com/128/2118/2118630.png")),
                    const Text("Nargiza"),
                  ],
                ),
              ),
              Container(
                height: 95,
                width: 70,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.network(
                        "https://cdn-icons-png.flaticon.com/128/3006/3006899.png"),
                    const Text("Ali"),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Course",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(" All "),
              Text(" Design "),
              Text(" Programming "),
              Text(" Mathematics "),
              Text(" English "),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: <Widget>[
              Divider(
                color: Colors.grey.shade300,
                thickness: 2,
              ),
              const Divider(
                color: Colors.orangeAccent,
                thickness: 4,
                indent: 10,
                endIndent: 310,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp1()));
                    },
                    icon: Course(
                        title: "Mathematic Course",
                        lessons: "50 Lesson",
                        duration: "4Hour 30 Min"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Course(
                          title: "Design Learning To PhD levels",
                          lessons: "60 Lesson",
                          duration: "6Hour 45 Min")),
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp1()));
                      },
                      icon: Course(
                          title: "English Training for IELTS",
                          lessons: "20 Lesson",
                          duration: "3Hr 30 Min")),
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp1()));
                      },
                      icon: Course(
                          title: "Programing to Master Degree",
                          lessons: "30 Lesson",
                          duration: "4Hr 30 Min")),
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Course(
                          title: "Lerning Web Devolopmend",
                          lessons: "20 Lesson",
                          duration: "3Hr 50 Min")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Course extends StatelessWidget {
  String title;
  String lessons;
  String duration;
  Course(
      {super.key,
      required this.title,
      required this.lessons,
      required this.duration});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 209, 209, 209),
                blurRadius: 5,
                spreadRadius: 5),
          ],
          color: const Color.fromARGB(255, 243, 229, 216)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 50,
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.note_add_sharp,
                      color: Color.fromARGB(255, 123, 142, 248),
                    ),
                    Text(lessons),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.play_arrow,
                      color: Colors.orangeAccent,
                    ),
                    Text(duration)
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Course Details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {
              // Action for back button
            },
            icon: Image.asset("rasm/image2.png"),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("rasm/image2.png"),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: MainBody(),
      ),
    );
  }
}
