cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.635"
  sha256 arm:   "4ec3062e91290e794e80f019dfd26d17be6d333fa8eddaac8552f0f534808ecc",
         intel: "de43e9d319e3840a712247c2950d79716b2671e6541e53b4fdd49bc459c986c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
