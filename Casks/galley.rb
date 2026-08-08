cask "galley" do
  version "0.4"
  sha256 "b7baca4a556b6f3f62da53fdd48fb6111ae7ee1e1d50785ed8fe9125e98dae69"

  url "https://github.com/munepi/Galley/releases/download/v#{version}/GalleyPDF_#{version}.dmg"
  name "Galley"
  name "GalleyPDF"
  desc "Minimalist PDF previewer for TeX/LaTeX with SyncTeX support"
  homepage "https://github.com/munepi/Galley"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  pkg "GalleyPDF.pkg"

  uninstall quit:    "com.github.munepi.galley",
            pkgutil: "com.github.munepi.galley"

  zap trash: [
    "~/Library/Caches/com.github.munepi.galley",
    "~/Library/HTTPStorages/com.github.munepi.galley",
    "~/Library/Preferences/com.github.munepi.galley.plist",
    "~/Library/Saved Application State/com.github.munepi.galley.savedState",
  ]
end
