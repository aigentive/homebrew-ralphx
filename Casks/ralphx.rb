cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.46.0"
  sha256 arm:   "1a5b7c3f97d2068d4b582160e5596b9d649a6266389317db4bd93cd836dcb03b",
         intel: "a7079ea27eeaa652ac87627c39785916583bd7b83afffc5fcfea59af9fa61693"

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
