import 'package:dartz/dartz.dart';
import 'package:netflix/services/api/failures/mainFailures.dart';
import 'package:netflix/view/downloads/downloads.dart';

abstract class downloadsrepo {
  Future<Either<mainFailures, List<downloads>>> getDownloadsImages();
}
