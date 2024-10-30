import 'package:app/bloc/dex_bloc.dart';
import 'package:app/presentaion/offers_extended/widgets/news_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsVirtical extends StatelessWidget {
  const NewsVirtical({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DexBloc, DexState>(
      builder: (context, state) {
        return SizedBox(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.news.length,
            itemBuilder: (context, index) {
              return NewsContainer(
                maintext: state.news[index].maintext,
                imagepath: state.news[index].imagepath,
                onTtap: () {
                  context.read<DexBloc>().add(getPageNumber(page_index: index));
                  Navigator.pushNamed(context, "Selectedpage");
                },
              );
            },
          ),
        );
      },
    );
  }
}
