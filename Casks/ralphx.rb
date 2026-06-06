cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.34.2"
  sha256 arm:   "bdf68bdf5833f8b30ac35010fd4d50775fd7c9b1f631de41ceea89e1853b6585",
         intel: "431e73d8109ae7d33c0d4f4d9e13a3bcacc477e3df2c054ab09146f84edc90c4"

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
