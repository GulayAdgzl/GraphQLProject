import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/providers/fetct_character_state.dart';

class FetchCharactersProvider extends StateNotifier<FetchCharactersState> {
  FetchCharactersProvider(super.state);

  fetchCharacters() async {
    state = FetchCharactersState.fetching();
    try {
      Dio dio = Dio();
      var response = await dio.post('https://rickandmortyapi.com/graphql');
    } on DioException catch (e) {
      state = FetchCharactersState.failed(e.message!);
    } catch (e) {
      state = FetchCharactersState.failed('Failed to fetch Characters');
    }
  }
}
