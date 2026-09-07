cask "galley" do
  version "0.6"
  sha256 "43e2b7f941136cad3d65d0040da487b1890f926dcfabe25859661277a94cfa34"

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
