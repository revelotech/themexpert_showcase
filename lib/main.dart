import 'package:flutter/material.dart';
import 'package:themexpert/themexpert.dart';
import 'package:themexpert_showcase/theme/app_theme.dart';
import 'package:themexpert_showcase/theme/switch_component_theme.dart';

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
    return ThemeXConfiguration(
      darkMode: false,
      builder: (context) => ThemeXWrapper(
        theme: AppTheme(context),
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: themeOf(context).surfaceColor,
            appBar: AppBar(
              backgroundColor: themeOf(context).surfaceColor,
              title: Text(
                'Flutter ThemeXpert',
                style: themeOf(context).txBody,
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
                      style: themeOf(context).txOverline,
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
                            color: themeOf(context).primaryColorLight01,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 4,
                          ),
                          child: Text(
                            'APPTHEME',
                            style: themeOf(context).txOverline,
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
                                  style: themeOf(context).txTitle,
                                ),
                                TextSpan(
                                  text: 'main theme',
                                  style: themeOf(context).txTitleBold,
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
                              style: themeOf(context).txBodyMediumEmphasis),
                        ),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: ThemeXWrapper(
                        theme: SwitchComponentTheme(context),
                        builder: (context) {
                          return Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: const EdgeInsets.all(12),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    ThemeX.ofType<SwitchComponentTheme>(context)
                                        .borderRadius,
                                color: themeOf(context).surfaceColor,
                                boxShadow:
                                    ThemeX.ofType<SwitchComponentTheme>(context)
                                        .shadow,
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Switch(
                                    activeColor: themeOf(context).featuredColor,
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
                                    style: themeOf(context).txBody,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
