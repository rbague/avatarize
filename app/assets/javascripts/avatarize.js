/*
* Avatarizer.js
*
* Roger Bagué Martí
* Create a letter avatar based on the initial
* MIT License
*/
(function (global, factory) {
  typeof exports === 'object' && typeof module !== 'undefined' ? module.exports = factory() :
  typeof define === 'function' && define.amd ? define(factory) :
  (global.Avatarizer = factory());
}(this, (function () { 'use strict';
  const COLOURS = ["#1abc9c", "#2ecc71", "#3498db", "#9b59b6", "#34495e", "#16a085", "#27ae60", "#2980b9", "#8e44ad", "#2c3e50", "#f1c40f", "#e67e22", "#e74c3c", "#ecf0f1", "#95a5a6", "#f39c12", "#d35400", "#c0392b", "#bdc3c7", "#7f8c8d"];

  const Avatarizer = {
    process: function (source, size) {
      size = size || 100;
      if (window.devicePixelRatio) { size = size * window.devicePixelRatio; }

      var content = String(source || "").toUpperCase().charAt(0);
      var colourIndex = (content.charCodeAt(0) - 64) % COLOURS.length;

      let canvas = document.createElement("canvas");
      canvas.width = size;
      canvas.height = size;

      let context = canvas.getContext("2d");
      context.fillStyle = COLOURS[colourIndex - 1];
      context.fillRect(0, 0, canvas.width, canvas.height);
      context.font = Math.round(canvas.width / 1.333) + "px Arial";
      context.textAlign = "center";
      context.fillStyle = "#FFFFFF";
      context.fillText(content, size / 2, Math.round(canvas.width / 1.333));

      return canvas.toDataURL();
    },
    processAll: function () {
      document.querySelectorAll("img[data-avatar-content]").forEach(function(element) {
        let source = element.getAttribute("data-avatar-content");
        element.src = Avatarizer.process(source, element.getAttribute("data-avatar-size"));
        element.setAttribute("alt", source);
      });
    }
  };

  return Avatarizer;
})));
