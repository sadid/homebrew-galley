cask "galley" do
  version "0.7"
  sha256 "bbec257c82ed2bea8dc87163686fab91bbaf26b89b848570ec27a6d7e84d6a4f"

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
