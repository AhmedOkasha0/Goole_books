import 'package:flutter/material.dart';
import 'package:test_handel/core/api/api_service.dart';
import 'package:test_handel/core/model/BooksModel.dart';

class HomeScreenViewModel extends ChangeNotifier {
  List<BooksModel?> booksList = [];

  void getBooks() async {
    try {
      var response = await ApiService.getNewsBooks();
      var booksList = response.items;
    } catch (error) {
      print(error.toString());
    }
  }
}


























// import 'package:bookly/core/utils/api_service.dart';

// import 'package:bookly/features/home/Data/models/BooksModel.dart';
// import 'package:bookly/features/home/Presentation/views/Widgets/FeatureBooksListView.dart';
// import 'package:flutter/material.dart';
//
// class BookViewModel extends StatefulWidget {
//   const BookViewModel({Key? key}) : super(key: key);
//
//   @override
//   State<BookViewModel> createState() => _BookViewModelState();
// }
//
// class _BookViewModelState extends State<BookViewModel> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<BooksModel>(
//       future: ApiService.getSources(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         } else if (snapshot.hasError) {
//           return Column(
//             children: [
//               Text('something went wrong'),
//               ElevatedButton(onPressed: () {}, child: Text('Refresh')),
//             ],
//           );
//         } else if (snapshot.hasData) {
//           return FeaturedBooksListView();
//         }
//         return const Center(
//           child: Text('errrorrrorrr',style: TextStyle(color: Colors.lightBlue),)
//         );
//       },
//     );
//   }
// }
