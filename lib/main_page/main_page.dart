import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:social_sphere/common/extentions/build_context_layout.dart';
import 'package:uikit/uikit.dart';
import 'package:uikit/widgets/buttons/text_button.dart';
import 'package:uikit/widgets/cards/main_card.dart';
import 'package:uikit/widgets/events/event_card.dart';
import 'package:uikit/widgets/tasks/task_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.layout.theme;

    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              MainCard(
                title: 'Задачи',
                bottomAction: KitTextButton(
                  text: 'Смотреть все',
                  onTap: () => {
                    AdaptiveTheme.of(context).toggleThemeMode(),
                  },
                ),
                child: TaskCard.compact(
                  taskDeadline: DateTime.now(),
                  taskTitle: 'Доделать отчёт за квартал',
                  onChanged: (bool value) {
                    print(value);
                  },
                ),
              ),
              const SizedBox(height: 24),
              MainCard(
                title: 'Cобытия',
                bottomAction: KitTextButton(
                  text: 'Смотреть все',
                  onTap: () => {
                    AdaptiveTheme.of(context).toggleThemeMode(),
                  },
                ),
                child: EventCard.compact(
                  date: DateTime.now(),
                  eventTitle: 'Религиозный праздник',
                  eventSubtitle: 'Религиозный праздник',
                ),
              ),
              const SizedBox(height: 24),
              MainCard(
                title: 'Статистика',
                bottomAction: KitTextButton(
                  text: 'Смотреть все',
                  onTap: () => {
                    AdaptiveTheme.of(context).toggleThemeMode(),
                  },
                ),
                topAction: const KitDropdownButton<String>(
                  values: ['События', 'Задачи'],
                  onChanged: print,
                  selectedValue: 'События',
                ),
                child: EventCard.compact(
                  date: DateTime.now(),
                  eventTitle: 'Религиозный праздник',
                  eventSubtitle: 'Религиозный праздник',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
