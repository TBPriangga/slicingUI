import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fd_dashbord_controller.dart';

class FdDashbordView extends StatefulWidget {
  FdDashbordView({Key? key}) : super(key: key);

  Widget build(context, FdDashbordController controller) {
    controller.view = this;

    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            controller.scaffoldKey.currentState?.openDrawer();
          },
          icon: Image.network(
            "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTsnWUqKyhcLIpuqfn_JBgQSTmLx0PFYpKJH2WixlnlwJ5aD1Kd",
            width: 120.0,
            height: 120.0,
            fit: BoxFit.fill,
          ),
        ),
        title: Column(
          children: [
            Text(
              "Current location",
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.place,
                  size: 24.0,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  "Surabaya, Jawa Timur",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Badge(
                label: Text(
                  "4",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Tri Bayu Priangga"),
              accountEmail: Text("tpriangga6@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
              ),
              otherAccountsPictures: [
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/women/74.jpg"),
                // ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/men/47.jpg"),
                // ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.rule),
              title: Text("TOS"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text("Privacy Policy"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: Text("Logout"),
              onTap: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 160.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1560130803-aaadb4bc913e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 0.0,
                      bottom: 0.0,
                      child: SizedBox(
                        width: 200.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Get special discount",
                              style: GoogleFonts.oswald(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Up to 50%",
                              style: GoogleFonts.oswald(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const StadiumBorder(),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Claim Voucher",
                                style: TextStyle(
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Find your food...",
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                          hoverColor: Colors.transparent,
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              QCategoryPicker(
                items: controller.categories,
                onChanged: (index, label, value, item) {},
                itemBuilder: (item, selected, action) {
                  return InkWell(
                    onTap: () => action(),
                    child: Container(
                      height: 86.0,
                      width: 68.0,
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color:
                            selected ? const Color(0xffff4e01) : Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item["icon"],
                            size: 24.0,
                            color: selected ? Colors.white : null,
                          ),
                          Text(
                            item["label"],
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: selected ? Colors.white : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 1.4,
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return InkWell(
                    onTap: () => Get.to(FdDetailView(
                      item: item,
                    )),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            item["photo"],
                            width: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          item["product_name"],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "30 Min",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              "120 Sale",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "\$${item["price"]}",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FdDashbordView> createState() => FdDashbordController();
}
