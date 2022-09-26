import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int initialstepperindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Your Profile "),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                physics: const BouncingScrollPhysics(),
                currentStep: initialstepperindex,
                onStepTapped: (int step) {
                  setState(() {
                    initialstepperindex = step;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    if (initialstepperindex < 9) initialstepperindex++;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (initialstepperindex > 0) initialstepperindex--;
                  });
                },
                controlsBuilder: (context, details) {
                  return Row(
                    children: [
                      const SizedBox(height: 70),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff54759E),
                          ),
                          child: (initialstepperindex == 9)
                              ? const Text("ADD")
                              : const Text("CONTINUE"),
                          onPressed: details.onStepContinue),
                      const SizedBox(width: 50),
                      TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.grey,
                          ),
                          child: const Text("CANCEL"),
                          onPressed: details.onStepCancel),
                    ],
                  );
                },
                steps: <Step>[
                  Step(
                    // isActive: true,
                    title: const Text("PROFILE PHOTO"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 1
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      // color: Colors.red,
                      // alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 60,
                                    child: Text("ADD"),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {},
                                    mini: true,
                                    child: const Icon(Icons.add),
                                  ),
                                  const SizedBox(height: 30),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("NAME"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 2
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Vivek Tejani",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("phone"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 3
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "+91 99788 56746",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Email"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 4
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Example@gmail.com",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Dob"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 5
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "12 sep,2022",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Gender"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 6
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Male",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Current Location"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 7
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText:
                                "C/501, Shivplaza residency, near navjivan hotel, sarthana jakatnaka, surat",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Nationality"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 8
                        ? StepState.complete
                        : StepState.disabled,
                    content: const TextField(
                      decoration: InputDecoration(
                          hintText: "indian",
                          border: OutlineInputBorder(),
                          focusColor: Colors.blueAccent,
                          fillColor: Colors.red),
                    ),
                  ),
                  Step(
                    title: const Text("Religion"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 9
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Hindu",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  Step(
                    title: const Text("Language"),
                    isActive: initialstepperindex >= 0,
                    state: initialstepperindex >= 10
                        ? StepState.complete
                        : StepState.disabled,
                    content: Container(
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Gujarati/Hindi/English",
                            border: OutlineInputBorder(),
                            focusColor: Colors.blueAccent,
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
