import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:screen_design/helper/helper_method.dart';
import 'package:url_launcher/url_launcher.dart';

class ReadBlogPage extends StatefulWidget {
  const ReadBlogPage({Key? key}) : super(key: key);

  @override
  State<ReadBlogPage> createState() => _ReadBlogPageState();
}

class _ReadBlogPageState extends State<ReadBlogPage> {
  late var blogModelData;
  late int id;

  @override
  void didChangeDependencies() {
    List list = ModalRoute.of(context)!.settings.arguments as List;
    id = list[0];
    blogModelData = list[1];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    String imageUrl = blogModelData.blogImage ?? '';
    String formattedDate =
        HelperMethod.getDateFormat('dd MMM yyyy', DateTime.parse(blogModelData.createdAt ?? ''));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        title: Text(
          blogModelData.title ?? 'Blog Details',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color(0xff878787),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.3),
            ),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (imageUrl.isNotEmpty) Image.network('https://pencilbox.edu.bd/$imageUrl'),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    blogModelData.title ?? '',
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                buildInfoRow(Icons.person, 'By ${blogModelData.authorName ?? ''}'),
                buildInfoRow(Icons.timer, 'Date: $formattedDate'),
                const SizedBox(height: 5),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.comment),
                    const SizedBox(width: 5),
                    Text('Comments'),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () async {
                        String url =
                            'https://pencilbox.edu.bd/blog/details/${blogModelData.id}/${blogModelData.title}';
                        url = url.replaceAll(' ', '-');
                        print(url);
                        await Share.share(url);
                      },
                      child: const Text(
                        'Share',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Html(
                  data: blogModelData.blogPost ?? '',
                  onLinkTap: (url, _, __) async {
                    if (!await launchUrl(Uri.parse(url!))) {
                      throw Exception('Could not launch $url');
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildInfoRow(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        const SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}
