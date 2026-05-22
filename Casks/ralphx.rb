cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.26.0"
  sha256 arm:   "ba8f72ec04d8ac3d9ef489cea21a9c65ec36538c04a79b541ef935bb68566073",
         intel: "5284f37994d8e7856493ea59889a045e1ff98e22af41a7bbea0f1000363589cf"

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
