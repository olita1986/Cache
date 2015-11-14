import Quick
import Nimble

class ConfigSpec: QuickSpec {

  override func spec() {
    describe("Config") {

      describe(".defaultConfig") {
        it("returns the correct default config") {
          let config = Config.defaultConfig

          expect(config.frontKind.name).to(equal(CacheKind.Memory.name))
          expect(config.backKind!.name).to(equal(CacheKind.Disk.name))
          expect(config.expiry.date).to(equal(Expiry.Never.date))
          expect(config.maxSize).to(equal(0))
        }
      }
    }
  }
}