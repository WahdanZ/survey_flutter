///
///Interface for model mappers. It provides helper methods that facilitate
///retrieving of models from outer data source layers
///
///@param <E> the cached model input type
///@param <E> the remote model input type
///@param <D> the model return type
///
abstract class Mapper<M, R> {
  M mapFromEntity(R type);
  R mapFromModel(M type);
}
