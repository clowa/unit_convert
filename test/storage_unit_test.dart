import 'test.dart';

void main() {
  test('Kilobytes to Gigabit', () => approx(kilobyte, gigabit, 1024, 0.00781));
  test('Word to Block', () => approx(word, block, 1024, 4));
  test('Terabit to Terabyte', () => approx(terabit, terabyte, 8.0, 1.0));
  test('Floppy Disk to Gigabyte',
      () => approx(StorageUnit.floppyDisk35HD, gigabyte, 1000, 1.35756));
  test('CD to DVD', () => approx(cd80Minute, dvd, 10, 1.45896));
}
