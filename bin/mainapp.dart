// import 'package:mainapp/mainapp.dart' as mainapp;

// void main(List<String> arguments) {
//   print('Hello world: ${mainapp.calculate()}!');
// }

import "package:mainapp/prisma_client.dart";

final PrismaClient prisma = PrismaClient();

void main() async {
  try {
    final User user = await prisma.user.create(
      data: UserCreateInput(
        name: PrismaUnion.zero("Seven"),
        email: "seven@odroe.com",
      ),
    );
    print(user.toJson());
  } catch (e) {
    print(e.toString());
  } finally {
    await prisma.$disconnect();
  }
}
