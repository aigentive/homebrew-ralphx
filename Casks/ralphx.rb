cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.45.0"
  sha256 arm:   "51b0382cc8c4b7c0530fcf8e2d060898569a98f0abb1cb29485da255d912be7c",
         intel: "65d9141b0099d16e942842b3b8d6580b52b632b5929c13f4bae2397cbb2485d6"

  url "https://github.com/aigentive/ralphx.app/releases/download/v#{version}/RalphX_#{version}_#{arch}.dmg"
  name "RalphX"
  desc "Native Mac GUI for autonomous AI development"
  homepage "https://github.com/aigentive/ralphx.app"
  auto_updates true

  depends_on formula: "node"
  depends_on macos: ">= :ventura"

  app "RalphX.app"

  caveats do
    <<~EOS
      Install at least one supported AI harness CLI after install.
      RalphX can update itself in-app after install.
      To force a Homebrew-managed refresh, run: brew upgrade --cask ralphx
    EOS
  end
end
