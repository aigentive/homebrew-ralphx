cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.103.0"
  sha256 arm:   "729d4a16b75cd519274b796b3fe8fabca85f1690aace4fcec0cec104f55bcfe0",
         intel: "dd43a9f781cbdb93d6379ea60f3647b748de5f4db0590c97c76d45830c57bf24"

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
