cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.57.0"
  sha256 arm:   "771d4a7da680c0fba124b6588c0579306a4ceb943f8aadcbd45a899e767b9aba",
         intel: "af43b348506c7ff13b0bdabf2c9d5964d05efcc42e25b440eec30f3c294cccc4"

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
