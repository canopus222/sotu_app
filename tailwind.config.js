module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    darkMode: false,
    extend: {
      colors: {
        'custom-white': '#ffffff', // 白色を追加
        'custom-red': '#FF0000', // カスタム赤色を追加
        'custom-black': '#000000', // カスタム黒色を追加
        'custom-light-blue': '#ADD8E6', // カスタム水色
      },
    },
  },
  plugins: [require("daisyui")],
  daisyui: {
    darkTheme: false, // ダークモードをONにする場合は削除
  },
}
