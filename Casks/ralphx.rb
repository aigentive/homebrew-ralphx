cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.23.0"
  sha256 arm:   "01c71a5f03805baf22e5d2ab7e963436ff613173781cc64baf93a9e0208c313d",
         intel: "122e4e6b82643df6eb6e5b1441deba2af6c2297e4197c5c37e43414954fc9a34"

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
