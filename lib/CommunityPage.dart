import 'package:flutter/material.dart';
class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/icons/pets5.jpg"),
              fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("assets/icons/Test2.jpg"),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(20), color: Colors.black12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Align(
                      alignment: AlignmentDirectional(-0.27, 0),
                      child: Text(
                        "How to know your pet is pregnant?",
                        style: TextStyle(color: Colors.green, fontSize:18),
                      ),
                    ),
                    ],
                  ),
                ),

                onTap: () {
                  showAlertDialog1(context);
                },
              ),
              const Divider(
                height: 5,
                thickness: 0.5,
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("assets/icons/Test2.jpg"),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(20), color: Colors.black12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.27, 0),
                        child: Text(
                          "inoculations needed for your pet?",
                          style: TextStyle(color: Colors.green, fontSize:18),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showAlertDialog2(context);
                },
              ),
              const Divider(
                height: 5,
                thickness: 0.5,
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("assets/icons/Test2.jpg"),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(20), color: Colors.black12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.57, 0),
                        child: Text(
                          "What is special about pets?",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showAlertDialog3(context);
                },
              ),
              const Divider(
                height: 5,
                thickness: 0.5,
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("assets/icons/Test2.jpg"),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(20), color: Colors.black12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.27, 0),
                        child: Text(
                          "what food shouldn't your pet eat?",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showAlertDialog4(context);
                },
              ),
              const Divider(
                height: 5,
                thickness: 0.5,
              ),
              InkWell(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image:  DecorationImage(image: AssetImage("assets/icons/Test2.jpg"),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(20), color: Colors.black12),
                  child:  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.27, 0),
                        child: Text(
                          "pet you need depending on your routine?",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showAlertDialog5(context);
                },
              ),
              const Divider(
                height: 5,
                thickness: 0.5,
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("assets/icons/Test2.jpg"),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(20), color: Colors.black12),
                  child:  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.62, 0),
                        child: Text(
                          "Choose your perfect pet on your routine.",
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showAlertDialog6(context);
                },
              ),
              const Divider(
                height: 5,
                thickness: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
showAlertDialog1(BuildContext context) {

  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Continue"),
    onPressed:  () {Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text("How to know your pet is pregnant?"),
    content:
    const Text("Noticeable weight gain in a few weeks Swollen, pink nipples that appear around three weeks into the pregnancyVomiting (morning sickness like in humans)Increased appetiteSleeping moreChanges in personality, like being more affectionate "
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
showAlertDialog2(BuildContext context) {

  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Continue"),
    onPressed:  () {Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text("inoculations needed for your pet?"),
    content: const Text("For Dogs: Vaccines for canine parvovirus, distemper, canine hepatitis and rabies are considered core vaccines. Non-core vaccines are given depending on the dog’s exposure risk. These include vaccines against Bordetella bronchiseptica, Borrelia burgdorferi and Leptospira bacteria.For Cats: Vaccines for panleukopenia (feline distemper), feline calicivirus, feline herpesvirus type I (rhinotracheitis) and rabies are considered core vaccines. Non-core vaccines are given depending on the cat's lifestyle; these include vaccines for feline leukemia virus, Bordetella, Chlamydophila felis and feline immunodeficiency virus.Your veterinarian can determine what vaccines are best for your pet."),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
showAlertDialog3(BuildContext context) {

  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Continue"),
    onPressed:  () {Navigator.pop(context);},
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text("What is special about pets?"),
    content: SingleChildScrollView(child: const Text("1. Dogs show you the meaning of unconditional love Whether you're rich or poor, your dog will always be there to greet you at the door when you get home. They get so excited just for you to do the simplest tasks like go for a walk, scratch their belly, or walk back into the room. Your dog will always lick your face and wag their tail when they see you. They couldn't care less that you didnt get that promotion or that you gained a few kilos over the holidays. 2. You have a constant source of entertainment I can't count the number of times my dog has done something hilarious, even though it may not have been something he should have done. Dogs are always finding themselves in situations where you can tell that they were hoping for another outcome, but that's not exactly what happened. Something just as simple as them getting their head stuck can be the funniest thing that you'll see all day long.")),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
showAlertDialog4(BuildContext context) {


  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Continue"),
    onPressed:  () {Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text("what food shouldn't your pet eat?"),
    content: const Text("1. Alcohol Because cats and dogs are smaller than humans, alcohol can have a deadlier effect on them. Dogs are often attracted by the sweet taste of alcoholic drinks, especially eggnog 2. Apple, Apricot, Cherry, & Plum Seeds/Pits Although the fleshy parts of apples are safe for dogs, the core and the apple seeds are not. Apple seeds contain cyanide, and while they likely are fine in small amounts, it's best to just avoid the core and seeds altogether. 3. Avocado You might think of avocados as healthy; however, they're anything but healthy for dogs. Avocados contain a substance called persin that can act as a dog poison, causing vomiting and diarrhea."),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
showAlertDialog5(BuildContext context) {

  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Continue"),
    onPressed:  () {Navigator.pop(context);},
  );

  AlertDialog alert = AlertDialog(
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text("What kind of pet you need depending on your routine?"),
    content: SingleChildScrollView(child: const Text("Allergies. Some people are allergic to the dander or saliva that comes with dogs and cats. The American Veterinary Medicine Association says that over 50 million people in the United States have allergies, and 24 million have asthma. Pets are a trigger for some people with asthma. Allergies can be managed with medical care, and even veterinarians and other animal workers have strategies for managing allergies. But it’s still important to be aware of the possibility of allergic reactions in your family and in people visiting your home. Despite common misunderstandings, there is no such thing as a nonallergenic dog. But some breeds of dogs and cats are considered “low‑allergen” because they shed less. Birds, reptiles, fish, and short‑haired rodents might be a better choice for people with severe pet allergies. Your space. Some pets need more space than others, and some landlords or management companies don’t allow pets. There are resources available to help you find pet‑friendly housing. Note that some helper animals (emotional support animals and service animals) are legally allowed to live with you, even in properties that do not normally allow pets. “Environmental enrichment” is the formal term for things such as safe pet toys, dog or cat puzzles (usually associated with feeding your pet so they don’t eat too much or too fast), and places your pet can explore and hide. You might find creative ways to outfit your space so that it includes being mindful that you are sharing your space with your pet. Your life. Living with pets provides many physical and mental health benefits. And it’s also a lot of work. Are you prepared to make sure your dog or cat gets enough exercise, regular veterinary care, training, and socialization? Even if you have a fenced‑in yard, a dog will need walks, and certain dog breeds need more exercise than others. Cats need more entertainment than you might realize, so play with them using cat-safe toys. I find it fun to play with my cat Pearl (when she’s in the mood). Age. It can be rewarding to raise a cat or dog from when they are young, but puppies and kittens are a lot of work! When you see those adorable faces looking at you, there are a few things you should think about: potty or litter training, socialization, spaying and neutering, and the fact that sometimes they might destroy things, like furniture and shoes. If you are looking for a mellow companion, adopting an adult or senior animal can be a wonderful way to add a family member that has been around the block. Personality and temperament. Meet before you get your new companion! Looks can be deceiving. It’s hard to know from an online photo if a pet will have a personality and energy level that is a good match for you. Adopting from a reputable humane organization or a rescue organization that has a foster system might be a better choice than using breeders. Many states are trying to regulate the unscrupulous operations known as “puppy mills.” It does take time to determine whether adopting is a better choice for you than buying from a store or breeder. Stores that work with rescue shelters can be a good option. As you may know, many wonderful animals are living in shelters and foster homes. The benefits of a foster pet are that a foster family can talk to you about the animal’s needs and behaviors and report on how they get along with other animals and humans. The best rescue, adoption, and foster groups make sure that before you get one of their pets, they are spayed or neutered, microchipped, and have their vaccinations. Most organizations provide opportunities for you to meet a pet before adopting, and even to take them home for a trial visit before committing. Life span. Cats live an average of 15 years, and dogs live an average of 12. However, that is an average, so your pet may not live so long or may live even longer. Are you emotionally prepared to outlive your pet? Have you thought about the extra cost and time it takes to care for an elderly or sick pet? Pet parents need to think about things like the end‑of‑life care for pets and euthanasia, a humane way to end a pet’s life when they’re experiencing pain or distress. Financial situation. It can cost upwards of 1,000 a year to care for a cat and 3,000 to care for a dog after paying the one‑time costs, according to the ASPCA. And some pets have more needs than other pets, which can increase costs. We need to take good care of our pets. It’s important to schedule regular check‑ups to keep pets vaccinated and protected against parasites and disease. Thankfully, some veterinarians offer payment plans and assistance for low‑income people, and programs like the One Health Organization’s Veterinary Care Voucher program are helping people with the cost of veterinary care. ")),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
showAlertDialog6(BuildContext context) {

  // set up the buttons
  Widget continueButton = ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.green),
    ),
    child: const Text("Continue"),
    onPressed:  () {Navigator.pop(context);},
  );

  AlertDialog alert = AlertDialog(
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text("What kind of pet you need depending on your routine?"),
    content: const Text(""),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}