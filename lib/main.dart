import 'package:flutter/material.dart';
import 'package:themexpert_showcase/tokens/app_colors.dart';
import 'package:themexpert_showcase/tokens/app_typography.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.tealLight03,
        appBar: AppBar(
          backgroundColor: AppColors.tealLight03,
          title: const Text(
            'Flutter ThemeXpert',
            style: TextStyle(color: AppColors.tealDark02),
          ),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: SizedBox(
              height: 30,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'POWERED BY REVELO',
                  style: AppTypography.baseText.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.tealDark01,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 24,
                ),
                sliver: SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.tealLight01,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 4,
                      ),
                      child: Text(
                        'APPTHEME',
                        style: AppTypography.baseTextOverline.copyWith(
                          color: AppColors.neutralBase,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'This is the app ',
                              style: AppTypography.baseText.copyWith(
                                fontSize: 38,
                                fontWeight: FontWeight.w600,
                                color: AppColors.neutralBase,
                                height: 1.1,
                              ),
                            ),
                            TextSpan(
                              text: 'main theme',
                              style: AppTypography.baseText.copyWith(
                                fontSize: 38,
                                fontWeight: FontWeight.w900,
                                color: AppColors.neutralBase,
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      child: Text(
                        'All the tokens and cool things that your '
                        'app needs are configured here. Also, I need '
                        'to write a few more words so the description '
                        'feels a little less lorem-ipsum-ish',
                        style: AppTypography.baseText.copyWith(
                          color: AppColors.neutralLight01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: AppColors.neutralBlank,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.tealDark02,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(
                          activeColor: AppColors.tealBase,
                          value: isDarkMode,
                          onChanged: (value) {
                            setState(() {
                              isDarkMode = value;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Toggle Dark Mode',
                          style: AppTypography.baseText.copyWith(
                            color: AppColors.neutralBase,
                          ),
                        ),
                      ],
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
