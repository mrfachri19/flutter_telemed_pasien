import 'package:telemedicine_pasien/bloc/cubit/artikel_cubit.dart';
import 'package:telemedicine_pasien/bloc/cubit/help_member_cubit.dart';
import 'package:telemedicine_pasien/injection_container.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'bloc/cubit/faq_cubit.dart';
import 'bloc/cubit/promo_banner_cubit.dart';
import 'bloc/cubit/service_category_cubit.dart';
import 'bloc/cubit/term_condition_cubit.dart';
import 'bloc/cubit/kebijakan_privasi_cubit.dart';
import 'bloc/cubit/login_email_cubit.dart';

List<BlocProviderSingleChildWidget> get providers => [
      // category
      BlocProvider(
        create: (_) => sl<TermConditionCubit>(),
      ),
      BlocProvider(
        create: (_) => sl<KebijakanPrivasiCubit>(),
      ),
      BlocProvider(
        create: (_) => sl<HelpMemberCubit>(),
      ),
      BlocProvider(
        create: (_) => sl<FaqCubit>(),
      ),
      BlocProvider(
        create: (_) => sl<ServiceCategoryCubit>(),
      ),
      BlocProvider(
        create: (_) => sl<PromoBannerCubit>(),
      ),
      BlocProvider(
        create: (_) => sl<ArtikelCubit>(),
      ),
      // auth
      BlocProvider(
        create: (_) => sl<LoginEmailCubit>(),
      ),
    ];
