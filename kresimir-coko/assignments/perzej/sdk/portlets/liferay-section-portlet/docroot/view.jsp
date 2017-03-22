<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<section class="section" id="about-liferay">
	<div class="container">
		<div class="section_column">
			<h3 class="section-heading">About Liferay</h3>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut esse maiores provident veritatis. Consectetur deleniti ea ex facilis illum natus non nulla obcaecati, praesentium, provident quo quos suscipit ut veritatis!
			</p>
		</div>
		<svg height="557pt" version="1.1" viewBox="0 0 552 557" width="552pt" xmlns="http://www.w3.org/2000/svg">
			<path d=" M 0.00 0.00 L 550.27 0.00 C 550.04 0.35 549.59 1.06 549.37 1.41 C 544.53 2.14 539.50 2.60 535.29 5.35 C 538.05 7.70 540.02 10.83 543.22 12.66 C 544.60 15.28 546.25 17.70 548.36 19.79 C 548.37 25.00 550.47 29.87 550.75 35.04 C 550.84 36.32 551.26 37.49 552.00 38.57 L 552.00 557.00 L 0.00 557.00 L 0.00 518.55 C 2.21 520.90 2.15 524.20 2.94 527.14 C 5.62 534.34 10.68 540.63 17.07 544.89 C 18.77 545.25 20.34 545.76 21.57 547.07 C 23.95 546.97 26.01 548.32 28.37 548.45 C 28.47 548.75 28.67 549.33 28.78 549.63 C 29.41 549.33 30.01 548.95 30.67 548.72 C 33.38 549.29 36.09 549.86 38.81 550.41 C 42.34 550.75 46.22 549.40 49.49 551.28 C 50.05 550.87 50.58 550.45 51.10 550.01 C 55.86 551.06 60.93 549.43 65.52 551.18 C 65.91 550.89 66.67 550.31 67.05 550.02 C 71.82 550.96 76.88 549.48 81.47 551.18 C 82.04 550.82 82.61 550.45 83.18 550.08 C 87.96 550.85 92.93 549.61 97.59 551.18 C 97.98 550.86 98.76 550.24 99.16 549.93 C 103.94 551.15 109.07 549.44 113.69 551.17 C 114.06 550.88 114.81 550.29 115.18 550.00 C 119.95 551.02 125.08 549.37 129.63 551.24 C 130.02 550.93 130.78 550.33 131.16 550.02 C 135.96 550.94 140.99 549.54 145.64 551.13 C 146.04 550.86 146.83 550.32 147.23 550.05 C 151.96 550.98 156.91 549.53 161.53 551.08 C 162.54 550.43 163.62 549.70 164.90 550.10 C 169.10 550.91 173.48 549.63 177.56 551.12 C 177.97 550.85 178.81 550.30 179.22 550.03 C 183.93 551.10 188.99 549.27 193.49 551.22 C 193.93 550.94 194.80 550.39 195.23 550.11 C 198.08 550.29 200.92 550.54 203.77 550.33 C 206.27 550.01 208.66 551.21 211.15 550.86 C 212.85 551.64 214.56 553.07 216.55 552.37 C 219.39 551.46 222.26 552.81 225.15 552.29 C 227.49 551.97 229.84 552.93 232.17 552.47 C 233.90 551.84 235.38 550.67 237.10 549.99 C 239.44 549.13 240.27 552.07 242.03 552.94 C 243.49 552.09 244.27 550.07 246.02 549.85 C 247.82 549.42 247.88 551.59 248.45 552.70 C 251.87 550.48 255.98 548.82 260.10 549.77 C 261.96 549.99 261.11 552.90 263.14 552.80 C 264.74 553.31 265.85 551.95 267.09 551.23 C 269.31 552.15 271.58 552.98 273.96 552.07 C 276.26 551.10 278.20 552.77 280.16 553.69 C 281.82 554.14 282.47 552.25 283.53 551.43 C 285.32 551.90 286.92 552.92 288.69 553.47 C 290.28 552.52 291.67 551.29 293.28 550.40 C 295.94 550.47 297.56 553.96 300.36 553.26 C 302.86 552.65 305.55 554.31 307.85 552.70 C 310.56 551.22 314.03 550.60 316.86 552.10 C 318.98 553.31 321.55 552.00 323.73 553.17 C 326.35 554.35 328.65 551.99 330.98 551.14 C 332.51 551.51 333.93 552.71 335.59 552.34 C 339.92 551.44 344.30 553.95 348.59 552.48 C 350.97 551.43 353.28 549.73 356.03 550.09 C 362.90 550.89 369.81 549.94 376.68 550.42 C 390.37 550.30 404.07 550.42 417.76 550.35 C 420.82 549.46 422.74 552.51 425.28 553.54 C 426.53 553.12 427.73 552.57 429.00 552.19 C 430.99 552.79 432.97 554.05 435.09 553.14 C 437.49 552.30 439.91 553.25 442.34 553.30 C 444.02 552.90 445.42 551.80 447.02 551.18 C 451.01 553.14 455.49 552.66 459.77 553.43 C 462.93 553.85 465.47 551.46 468.16 550.21 C 473.45 550.43 478.77 550.69 484.05 550.12 C 487.47 550.09 490.71 551.53 493.52 553.39 C 494.89 554.37 496.51 553.33 497.85 552.83 C 499.86 551.66 502.18 552.63 504.34 552.27 C 506.25 551.72 508.01 550.45 510.10 550.70 C 511.99 550.65 513.46 552.05 515.14 552.73 C 519.09 552.12 522.64 550.06 526.58 549.34 C 528.17 548.23 529.74 547.11 531.77 547.18 C 532.73 545.70 532.06 543.62 533.20 542.19 C 534.53 540.51 536.42 539.40 537.88 537.84 C 544.65 530.15 544.12 518.60 550.78 510.90 C 548.92 508.27 546.29 505.75 546.48 502.25 C 546.05 497.96 550.52 494.77 549.63 490.46 C 548.75 489.58 547.81 488.78 546.94 487.93 C 545.36 482.93 550.16 478.96 549.75 474.06 C 549.27 471.46 546.54 469.74 546.63 466.97 C 546.33 462.98 550.24 460.09 549.85 456.02 C 550.35 452.51 545.99 450.72 546.59 447.15 C 546.48 437.83 546.22 428.52 546.36 419.22 C 545.37 411.85 545.90 404.39 545.80 396.98 C 545.74 358.00 545.91 319.00 545.59 280.03 C 545.17 273.37 545.90 266.67 545.13 260.03 C 545.63 256.51 545.30 252.98 545.28 249.45 C 544.14 240.71 545.19 231.88 544.63 223.12 C 544.31 212.10 544.75 201.06 543.84 190.05 C 544.50 180.39 543.21 170.67 543.95 160.99 C 544.36 158.41 545.38 155.95 545.59 153.33 C 545.84 149.51 543.63 145.95 544.07 142.12 C 544.29 139.74 546.33 137.70 545.60 135.23 C 544.83 132.28 544.76 129.28 545.38 126.30 C 541.65 122.81 543.10 117.56 542.89 113.04 C 542.32 100.39 542.70 87.74 542.30 75.10 C 542.67 71.18 541.69 67.27 542.24 63.36 C 541.66 52.36 542.87 41.14 539.90 30.37 C 539.37 30.78 538.84 31.19 538.32 31.60 C 537.89 30.64 537.48 29.68 537.11 28.70 C 535.74 19.12 526.37 11.24 516.64 12.21 C 518.17 11.12 520.05 10.94 521.85 10.61 C 519.86 9.23 517.81 7.40 515.23 7.58 C 507.66 8.14 500.25 4.95 492.72 6.71 C 479.85 7.55 466.90 6.89 454.00 7.09 C 450.26 7.28 446.57 6.70 442.89 6.22 C 439.55 5.71 436.34 7.13 433.03 7.14 C 391.36 7.08 349.68 7.11 308.01 7.11 C 304.06 7.03 300.07 7.44 296.15 6.73 C 292.11 5.81 288.08 7.76 284.01 7.05 C 277.50 5.82 270.78 5.76 264.22 6.62 C 257.17 8.14 250.03 5.14 242.97 6.86 C 237.99 8.03 232.99 5.81 228.02 6.88 C 223.98 7.91 220.09 5.20 216.05 6.20 C 211.48 7.13 206.76 7.60 202.13 6.77 C 199.41 6.20 196.69 6.94 193.97 7.09 C 144.99 7.16 96.00 7.03 47.01 7.12 C 39.04 8.27 30.68 8.02 23.05 10.73 C 25.80 11.08 28.84 10.51 31.29 12.14 C 28.69 12.33 26.03 12.12 23.47 12.70 C 18.07 15.10 12.11 18.60 10.72 24.83 C 9.15 32.22 10.88 39.87 9.68 47.32 C 8.56 41.65 8.63 35.80 7.68 30.07 C 4.99 32.04 5.86 35.82 5.13 38.69 C 3.79 43.02 4.65 47.59 4.16 52.04 C 4.01 73.37 4.07 94.71 4.08 116.04 C 4.40 122.84 1.93 129.53 2.75 136.32 C 4.91 142.44 2.29 148.79 3.05 155.04 C 4.84 166.62 3.50 178.37 3.75 190.03 C 3.24 205.35 3.70 220.68 3.03 235.99 C 3.08 283.56 3.20 331.15 2.55 378.69 C 2.28 386.12 2.74 393.57 2.03 400.98 C 2.08 413.31 2.19 425.65 1.91 437.98 C 1.83 443.16 2.40 448.37 1.79 453.55 C 1.34 453.48 0.45 453.33 0.00 453.26 L 0.00 0.00 Z" fill="#e9e9e9"></path> <path d=" M 550.27 0.00 L 552.00 0.00 L 552.00 38.57 C 551.26 37.49 550.84 36.32 550.75 35.04 C 550.47 29.87 548.37 25.00 548.36 19.79 C 546.25 17.70 544.60 15.28 543.22 12.66 C 540.02 10.83 538.05 7.70 535.29 5.35 C 539.50 2.60 544.53 2.14 549.37 1.41 C 549.59 1.06 550.04 0.35 550.27 0.00 Z" fill="#f8f8f8"></path> <path d=" M 193.97 7.09 C 196.69 6.94 199.41 6.20 202.13 6.77 C 206.76 7.60 211.48 7.13 216.05 6.20 C 220.09 5.20 223.98 7.91 228.02 6.88 C 232.99 5.81 237.99 8.03 242.97 6.86 C 250.03 5.14 257.17 8.14 264.22 6.62 C 270.78 5.76 277.50 5.82 284.01 7.05 C 288.08 7.76 292.11 5.81 296.15 6.73 C 300.07 7.44 304.06 7.03 308.01 7.11 C 349.68 7.11 391.36 7.08 433.03 7.14 C 436.34 7.13 439.55 5.71 442.89 6.22 C 446.57 6.70 450.26 7.28 454.00 7.09 C 466.90 6.89 479.85 7.55 492.72 6.71 C 500.25 4.95 507.66 8.14 515.23 7.58 C 517.81 7.40 519.86 9.23 521.85 10.61 C 520.05 10.94 518.17 11.12 516.64 12.21 C 495.42 12.75 474.17 12.22 452.95 12.44 C 316.62 12.40 180.30 12.43 43.98 12.41 C 39.75 12.39 35.51 12.53 31.29 12.14 C 28.84 10.51 25.80 11.08 23.05 10.73 C 30.68 8.02 39.04 8.27 47.01 7.12 C 96.00 7.03 144.99 7.16 193.97 7.09 Z" fill="#dedede"></path> <path d=" M 23.47 12.70 C 26.03 12.12 28.69 12.33 31.29 12.14 C 35.51 12.53 39.75 12.39 43.98 12.41 C 180.30 12.43 316.62 12.40 452.95 12.44 C 474.17 12.22 495.42 12.75 516.64 12.21 C 526.37 11.24 535.74 19.12 537.11 28.70 C 536.64 53.79 536.98 78.89 536.84 103.98 C 536.77 240.98 536.74 377.98 536.75 514.99 C 536.55 520.02 537.87 525.48 535.15 530.07 C 532.87 535.35 527.59 538.93 521.99 539.72 C 356.02 539.70 190.02 539.69 24.05 539.73 C 18.77 538.86 13.97 535.36 11.47 530.64 C 8.92 524.73 10.09 518.20 9.99 511.98 C 9.71 357.10 10.03 202.20 9.68 47.32 C 10.88 39.87 9.15 32.22 10.72 24.83 C 12.11 18.60 18.07 15.10 23.47 12.70 Z" fill="#ffffff"></path> <path d=" M 537.11 28.70 C 537.48 29.68 537.89 30.64 538.32 31.60 C 538.84 31.19 539.37 30.78 539.90 30.37 C 542.87 41.14 541.66 52.36 542.24 63.36 C 541.69 67.27 542.67 71.18 542.30 75.10 C 542.70 87.74 542.32 100.39 542.89 113.04 C 543.10 117.56 541.65 122.81 545.38 126.30 C 544.76 129.28 544.83 132.28 545.60 135.23 C 546.33 137.70 544.29 139.74 544.07 142.12 C 543.63 145.95 545.84 149.51 545.59 153.33 C 545.38 155.95 544.36 158.41 543.95 160.99 C 543.21 170.67 544.50 180.39 543.84 190.05 C 544.75 201.06 544.31 212.10 544.63 223.12 C 545.19 231.88 544.14 240.71 545.28 249.45 C 545.30 252.98 545.63 256.51 545.13 260.03 C 545.90 266.67 545.17 273.37 545.59 280.03 C 545.91 319.00 545.74 358.00 545.80 396.98 C 545.90 404.39 545.37 411.85 546.36 419.22 C 546.22 428.52 546.48 437.83 546.59 447.15 C 545.99 450.72 550.35 452.51 549.85 456.02 C 550.24 460.09 546.33 462.98 546.63 466.97 C 546.54 469.74 549.27 471.46 549.75 474.06 C 550.16 478.96 545.36 482.93 546.94 487.93 C 547.81 488.78 548.75 489.58 549.63 490.46 C 550.52 494.77 546.05 497.96 546.48 502.25 C 546.29 505.75 548.92 508.27 550.78 510.90 C 544.12 518.60 544.65 530.15 537.88 537.84 C 536.42 539.40 534.53 540.51 533.20 542.19 C 532.06 543.62 532.73 545.70 531.77 547.18 C 529.74 547.11 528.17 548.23 526.58 549.34 C 522.64 550.06 519.09 552.12 515.14 552.73 C 513.46 552.05 511.99 550.65 510.10 550.70 C 508.01 550.45 506.25 551.72 504.34 552.27 C 502.18 552.63 499.86 551.66 497.85 552.83 C 496.51 553.33 494.89 554.37 493.52 553.39 C 490.71 551.53 487.47 550.09 484.05 550.12 C 478.77 550.69 473.45 550.43 468.16 550.21 C 465.47 551.46 462.93 553.85 459.77 553.43 C 455.49 552.66 451.01 553.14 447.02 551.18 C 445.42 551.80 444.02 552.90 442.34 553.30 C 439.91 553.25 437.49 552.30 435.09 553.14 C 432.97 554.05 430.99 552.79 429.00 552.19 C 427.73 552.57 426.53 553.12 425.28 553.54 C 422.74 552.51 420.82 549.46 417.76 550.35 C 404.07 550.42 390.37 550.30 376.68 550.42 C 369.81 549.94 362.90 550.89 356.03 550.09 C 353.28 549.73 350.97 551.43 348.59 552.48 C 344.30 553.95 339.92 551.44 335.59 552.34 C 333.93 552.71 332.51 551.51 330.98 551.14 C 328.65 551.99 326.35 554.35 323.73 553.17 C 321.55 552.00 318.98 553.31 316.86 552.10 C 314.03 550.60 310.56 551.22 307.85 552.70 C 305.55 554.31 302.86 552.65 300.36 553.26 C 297.56 553.96 295.94 550.47 293.28 550.40 C 291.67 551.29 290.28 552.52 288.69 553.47 C 286.92 552.92 285.32 551.90 283.53 551.43 C 282.47 552.25 281.82 554.14 280.16 553.69 C 278.20 552.77 276.26 551.10 273.96 552.07 C 271.58 552.98 269.31 552.15 267.09 551.23 C 265.85 551.95 264.74 553.31 263.14 552.80 C 261.11 552.90 261.96 549.99 260.10 549.77 C 255.98 548.82 251.87 550.48 248.45 552.70 C 247.88 551.59 247.82 549.42 246.02 549.85 C 244.27 550.07 243.49 552.09 242.03 552.94 C 240.27 552.07 239.44 549.13 237.10 549.99 C 235.38 550.67 233.90 551.84 232.17 552.47 C 229.84 552.93 227.49 551.97 225.15 552.29 C 222.26 552.81 219.39 551.46 216.55 552.37 C 214.56 553.07 212.85 551.64 211.15 550.86 C 208.66 551.21 206.27 550.01 203.77 550.33 C 200.92 550.54 198.08 550.29 195.23 550.11 C 194.80 550.39 193.93 550.94 193.49 551.22 C 188.99 549.27 183.93 551.10 179.22 550.03 C 178.81 550.30 177.97 550.85 177.56 551.12 C 173.48 549.63 169.10 550.91 164.90 550.10 C 163.62 549.70 162.54 550.43 161.53 551.08 C 156.91 549.53 151.96 550.98 147.23 550.05 C 146.83 550.32 146.04 550.86 145.64 551.13 C 140.99 549.54 135.96 550.94 131.16 550.02 C 130.78 550.33 130.02 550.93 129.63 551.24 C 125.08 549.37 119.95 551.02 115.18 550.00 C 114.81 550.29 114.06 550.88 113.69 551.17 C 109.07 549.44 103.94 551.15 99.16 549.93 C 98.76 550.24 97.98 550.86 97.59 551.18 C 92.93 549.61 87.96 550.85 83.18 550.08 C 82.61 550.45 82.04 550.82 81.47 551.18 C 76.88 549.48 71.82 550.96 67.05 550.02 C 66.67 550.31 65.91 550.89 65.52 551.18 C 60.93 549.43 55.86 551.06 51.10 550.01 C 50.58 550.45 50.05 550.87 49.49 551.28 C 46.22 549.40 42.34 550.75 38.81 550.41 C 36.09 549.86 33.38 549.29 30.67 548.72 C 30.01 548.95 29.41 549.33 28.78 549.63 C 28.67 549.33 28.47 548.75 28.37 548.45 C 26.01 548.32 23.95 546.97 21.57 547.07 C 20.34 545.76 18.77 545.25 17.07 544.89 C 10.68 540.63 5.62 534.34 2.94 527.14 C 2.15 524.20 2.21 520.90 0.00 518.55 L 0.00 453.26 C 0.45 453.33 1.34 453.48 1.79 453.55 C 2.40 448.37 1.83 443.16 1.91 437.98 C 2.19 425.65 2.08 413.31 2.03 400.98 C 2.74 393.57 2.28 386.12 2.55 378.69 C 3.20 331.15 3.08 283.56 3.03 235.99 C 3.70 220.68 3.24 205.35 3.75 190.03 C 3.50 178.37 4.84 166.62 3.05 155.04 C 2.29 148.79 4.91 142.44 2.75 136.32 C 1.93 129.53 4.40 122.84 4.08 116.04 C 4.07 94.71 4.01 73.37 4.16 52.04 C 4.65 47.59 3.79 43.02 5.13 38.69 C 5.86 35.82 4.99 32.04 7.68 30.07 C 8.63 35.80 8.56 41.65 9.68 47.32 C 10.03 202.20 9.71 357.10 9.99 511.98 C 10.09 518.20 8.92 524.73 11.47 530.64 C 13.97 535.36 18.77 538.86 24.05 539.73 C 190.02 539.69 356.02 539.70 521.99 539.72 C 527.59 538.93 532.87 535.35 535.15 530.07 C 537.87 525.48 536.55 520.02 536.75 514.99 C 536.74 377.98 536.77 240.98 536.84 103.98 C 536.98 78.89 536.64 53.79 537.11 28.70 Z" fill="#dcdcdc"></path> <path d=" M 62.39 85.00 C 62.49 78.86 62.18 72.69 62.55 66.57 C 92.84 66.61 123.14 66.74 153.42 66.50 C 154.08 67.87 153.73 69.49 153.82 70.96 C 153.80 99.64 153.85 128.32 153.79 157.00 C 153.72 157.37 153.57 158.10 153.50 158.46 C 123.20 158.24 92.88 158.36 62.57 158.40 C 62.14 133.98 62.51 109.46 62.39 85.00 Z" fill="#101d3c"></path> <path d=" M 172.36 68.04 C 172.41 67.66 172.51 66.91 172.56 66.53 C 202.81 66.73 233.07 66.56 263.32 66.62 C 263.49 97.19 263.51 127.79 263.31 158.37 C 233.07 158.38 202.82 158.24 172.58 158.44 C 172.36 157.29 172.28 156.13 172.33 154.97 C 172.36 125.99 172.31 97.01 172.36 68.04 Z" fill="#25366b"></path> <path d=" M 282.20 67.18 L 282.86 66.55 C 312.63 66.65 342.41 66.66 372.18 66.54 C 372.49 66.88 373.11 67.57 373.42 67.91 C 373.35 97.67 373.34 127.43 373.42 157.19 C 373.08 157.49 372.40 158.09 372.06 158.39 C 342.32 158.34 312.57 158.31 282.83 158.41 C 282.53 158.08 281.94 157.43 281.64 157.10 C 281.70 127.36 281.71 97.61 281.64 67.87 L 282.20 67.18 Z" fill="#82b1e2"></path> <path d=" M 364.97 86.96 C 366.32 85.85 367.00 83.98 368.67 83.27 C 368.96 90.70 370.06 98.43 368.86 105.72 C 366.48 109.27 364.27 113.12 360.60 115.50 C 356.91 117.83 355.35 122.27 351.70 124.66 C 347.40 127.36 345.21 132.20 341.10 135.10 C 337.45 137.79 335.40 142.10 331.54 144.57 C 328.50 146.43 327.10 149.92 324.19 151.95 C 327.00 152.96 330.03 152.80 332.98 152.95 C 345.06 153.25 357.14 152.85 369.22 153.15 C 368.90 153.36 368.25 153.78 367.93 153.99 C 344.99 154.17 322.02 154.25 299.13 152.67 C 301.83 149.54 304.70 146.50 308.12 144.14 C 310.53 140.58 313.64 137.61 317.14 135.12 C 319.92 131.29 323.28 127.87 327.17 125.17 C 329.83 121.23 333.32 117.93 337.15 115.15 C 339.57 111.61 342.72 108.62 346.22 106.15 C 348.81 102.21 352.31 98.96 356.08 96.16 C 358.57 92.67 361.64 89.65 364.97 86.96 Z" fill="#9dc0e7"></path> <path d=" M 360.60 115.50 C 364.27 113.12 366.48 109.27 368.86 105.72 C 369.86 115.44 369.15 125.29 369.34 135.05 C 369.29 141.08 369.56 147.12 369.22 153.15 C 357.14 152.85 345.06 153.25 332.98 152.95 C 330.03 152.80 327.00 152.96 324.19 151.95 C 327.10 149.92 328.50 146.43 331.54 144.57 C 335.40 142.10 337.45 137.79 341.10 135.10 C 345.21 132.20 347.40 127.36 351.70 124.66 C 355.35 122.27 356.91 117.83 360.60 115.50 Z" fill="#bdd4ef"></path> <path d=" M 62.39 176.29 C 65.98 176.24 69.57 176.23 73.15 176.30 C 74.57 175.74 76.62 175.06 77.85 176.31 C 79.68 176.39 81.29 175.35 83.18 175.65 C 84.39 176.71 85.60 176.71 86.80 175.64 C 88.50 175.95 90.32 175.31 91.87 176.33 C 93.91 176.32 95.86 174.99 97.83 176.30 C 100.81 175.94 104.00 176.90 106.82 175.70 C 111.27 175.77 115.72 175.77 120.17 175.70 C 123.31 176.95 126.83 175.87 130.14 176.33 L 130.82 175.67 C 132.47 176.39 135.27 174.47 135.98 176.73 L 136.77 175.63 C 140.98 175.83 145.20 175.55 149.19 176.38 C 150.28 175.66 151.64 175.41 153.28 175.62 C 154.06 176.93 153.75 178.55 153.82 180.00 C 153.77 209.03 153.89 238.06 153.76 267.09 L 153.36 267.45 C 123.10 267.31 92.85 267.35 62.59 267.43 C 62.19 265.98 62.46 264.44 62.38 262.96 C 62.39 234.07 62.37 205.18 62.39 176.29 Z" fill="#25366b"></path> <path d=" M 172.35 176.39 C 179.83 174.52 187.48 177.62 194.98 175.72 C 196.68 175.64 198.38 175.70 200.00 176.30 C 206.56 174.82 213.42 177.57 220.02 175.71 C 222.56 176.60 225.39 176.46 227.96 175.72 C 230.36 175.45 232.61 176.70 235.03 176.25 C 239.94 174.74 244.93 176.65 249.92 176.28 C 254.37 176.42 259.38 174.39 263.48 176.80 C 263.30 206.98 263.63 237.17 263.31 267.33 C 233.16 267.46 203.02 267.31 172.87 267.41 L 172.36 266.80 C 172.31 236.67 172.33 206.53 172.35 176.39 Z" fill="#82b1e2"></path> <path d=" M 391.63 176.84 C 391.96 176.55 392.62 175.95 392.95 175.66 C 394.95 175.94 397.00 176.78 399.02 175.98 C 401.98 175.00 404.96 177.10 407.95 176.07 C 411.31 174.96 414.62 176.80 418.03 176.27 C 423.28 174.90 428.68 177.25 434.00 175.97 C 437.30 175.25 440.70 175.98 443.97 176.26 C 445.92 175.40 448.01 175.72 450.00 176.30 C 452.96 174.79 455.99 176.74 459.07 176.27 C 462.98 175.53 467.09 175.42 471.01 176.29 C 474.83 174.78 478.76 176.56 482.67 176.29 C 482.74 205.19 482.68 234.10 482.70 263.00 C 482.42 264.41 483.33 266.32 482.15 267.41 C 452.03 267.29 421.89 267.49 391.77 267.31 C 391.47 237.17 391.75 207.00 391.63 176.84 Z" fill="#82b1e2"></path> <path d=" M 395.36 181.20 C 395.77 181.10 396.58 180.89 396.99 180.79 C 408.02 180.69 419.04 180.83 430.07 180.75 C 432.30 180.67 434.52 180.93 436.72 181.32 C 438.23 181.60 439.74 181.84 441.27 182.08 C 438.99 184.61 435.56 185.92 433.86 188.98 C 432.23 191.58 429.91 193.62 427.40 195.35 C 424.13 197.39 422.94 201.50 419.56 203.43 C 416.84 205.07 414.85 207.55 413.07 210.13 C 411.04 213.11 407.28 214.29 405.32 217.34 C 403.76 219.72 401.78 221.78 399.36 223.28 C 397.13 224.41 396.96 227.07 396.26 229.18 C 396.01 227.69 395.69 226.21 395.46 224.71 C 395.21 210.21 395.38 195.70 395.36 181.20 Z" fill="#bdd4ef"></path> <path d=" M 436.72 181.32 C 440.68 180.06 444.93 180.80 449.02 180.68 C 454.29 181.08 459.79 180.33 464.83 182.29 C 460.23 185.82 456.26 190.11 452.44 194.46 C 436.49 209.47 421.38 225.39 405.75 240.76 C 402.63 244.09 398.94 246.93 396.42 250.80 C 395.31 242.20 394.33 233.36 395.46 224.71 C 395.69 226.21 396.01 227.69 396.26 229.18 C 396.19 230.44 396.12 231.70 396.08 232.96 C 401.77 226.37 408.30 220.57 414.33 214.29 C 419.23 209.57 423.77 204.47 428.87 199.96 C 433.12 196.88 436.62 192.94 440.32 189.24 C 442.51 186.87 445.12 184.86 446.92 182.15 C 445.05 181.79 443.14 181.86 441.27 182.08 C 439.74 181.84 438.23 181.60 436.72 181.32 Z" fill="#9abfe6"></path> <path d=" M 441.27 182.08 C 443.14 181.86 445.05 181.79 446.92 182.15 C 445.12 184.86 442.51 186.87 440.32 189.24 C 436.62 192.94 433.12 196.88 428.87 199.96 C 423.77 204.47 419.23 209.57 414.33 214.29 C 408.30 220.57 401.77 226.37 396.08 232.96 C 396.12 231.70 396.19 230.44 396.26 229.18 C 396.96 227.07 397.13 224.41 399.36 223.28 C 401.78 221.78 403.76 219.72 405.32 217.34 C 407.28 214.29 411.04 213.11 413.07 210.13 C 414.85 207.55 416.84 205.07 419.56 203.43 C 422.94 201.50 424.13 197.39 427.40 195.35 C 429.91 193.62 432.23 191.58 433.86 188.98 C 435.56 185.92 438.99 184.61 441.27 182.08 Z" fill="#aac7ea"></path> <path d=" M 246.21 205.30 C 250.41 201.29 254.22 196.86 258.82 193.29 C 259.38 195.12 259.76 197.02 259.82 198.95 C 260.35 218.64 260.05 238.33 260.13 258.01 C 259.93 259.55 260.60 261.39 259.66 262.75 C 245.85 263.62 231.90 262.86 218.04 263.10 C 215.64 262.98 213.04 263.45 210.82 262.31 C 213.84 262.02 216.86 262.03 219.89 262.08 C 232.97 262.24 246.08 262.55 259.14 262.04 C 259.59 248.94 259.41 235.81 259.23 222.70 C 259.42 218.53 259.27 214.34 258.78 210.19 C 257.43 211.71 256.17 213.30 254.75 214.74 C 241.36 228.04 228.08 241.45 214.70 254.76 C 212.21 257.37 209.66 259.95 206.65 261.98 C 201.24 262.75 195.54 262.34 190.10 261.65 C 208.59 242.68 227.51 224.09 246.21 205.30 Z" fill="#99bee6"></path> <path d=" M 254.75 214.74 C 256.17 213.30 257.43 211.71 258.78 210.19 C 259.27 214.34 259.42 218.53 259.23 222.70 C 254.45 226.10 251.47 231.32 246.77 234.78 C 243.34 237.38 241.54 241.57 237.86 243.91 C 234.34 246.34 232.31 250.29 228.91 252.86 C 225.39 255.42 223.22 259.31 219.89 262.08 C 216.86 262.03 213.84 262.02 210.82 262.31 C 209.41 262.44 208.02 262.33 206.65 261.98 C 209.66 259.95 212.21 257.37 214.70 254.76 C 228.08 241.45 241.36 228.04 254.75 214.74 Z" fill="#aecaeb"></path> <path d=" M 246.77 234.78 C 251.47 231.32 254.45 226.10 259.23 222.70 C 259.41 235.81 259.59 248.94 259.14 262.04 C 246.08 262.55 232.97 262.24 219.89 262.08 C 223.22 259.31 225.39 255.42 228.91 252.86 C 232.31 250.29 234.34 246.34 237.86 243.91 C 241.54 241.57 243.34 237.38 246.77 234.78 Z" fill="#bdd4ef"></path> <path d=" M 62.37 285.35 C 92.83 285.16 123.30 285.32 153.76 285.28 C 153.86 315.76 153.81 346.25 153.79 376.73 C 123.32 376.71 92.84 376.84 62.37 376.67 C 62.40 346.23 62.39 315.79 62.37 285.35 Z" fill="#82b1e2"></path> <path d=" M 282.18 285.31 C 312.43 285.24 342.69 285.25 372.95 285.30 L 373.39 285.94 C 373.39 316.04 373.32 346.13 373.42 376.22 L 372.78 376.70 C 343.82 376.81 314.87 376.71 285.92 376.75 C 284.55 376.45 282.58 377.42 281.66 376.09 C 281.72 346.04 281.62 315.99 281.71 285.95 L 282.18 285.31 Z" fill="#82b1e2"></path> <path d=" M 391.91 285.24 C 422.16 285.30 452.42 285.25 482.67 285.27 C 482.73 315.75 482.69 346.24 482.69 376.72 C 453.80 376.77 424.91 376.73 396.01 376.74 C 394.58 376.45 392.76 377.32 391.58 376.36 C 391.74 347.57 391.61 318.77 391.65 289.98 C 391.87 288.43 391.22 286.67 391.91 285.24 Z" fill="#25366b"></path> <path d=" M 286.16 290.18 C 293.45 290.09 300.75 290.17 308.05 290.16 C 312.60 290.21 317.20 289.35 321.72 290.34 C 324.70 290.90 327.75 290.97 330.78 291.18 C 328.42 294.59 326.04 298.16 322.43 300.37 C 318.83 302.45 317.50 306.79 314.00 308.99 C 311.54 310.53 309.67 312.76 308.08 315.16 C 306.01 318.43 301.92 319.58 299.83 322.82 C 298.23 325.16 296.41 327.40 294.00 328.96 C 290.69 331.04 288.99 334.72 286.18 337.33 C 285.47 333.26 285.82 329.10 285.66 324.99 C 285.76 313.65 285.51 302.29 285.78 290.95 L 286.16 290.18 Z" fill="#bdd4ef"></path> <path d=" M 321.72 290.34 C 323.98 289.23 326.57 289.88 328.99 289.77 C 335.27 290.02 341.75 289.37 347.87 291.12 C 347.74 291.42 347.48 292.02 347.35 292.32 C 329.84 309.83 312.30 327.33 294.79 344.85 C 291.83 347.48 289.51 350.84 286.19 353.03 C 285.73 348.04 285.59 343.02 285.70 338.03 L 286.18 337.33 C 288.99 334.72 290.69 331.04 294.00 328.96 C 296.41 327.40 298.23 325.16 299.83 322.82 C 301.92 319.58 306.01 318.43 308.08 315.16 C 309.67 312.76 311.54 310.53 314.00 308.99 C 317.50 306.79 318.83 302.45 322.43 300.37 C 326.04 298.16 328.42 294.59 330.78 291.18 C 327.75 290.97 324.70 290.90 321.72 290.34 Z" fill="#a2c3e8"></path> <path d=" M 143.18 308.28 C 145.91 306.49 146.65 302.74 149.64 301.25 C 149.76 308.84 150.30 316.44 150.30 324.04 L 149.77 324.73 C 137.41 337.04 125.13 349.45 112.77 361.77 C 109.90 364.72 106.69 367.37 104.18 370.67 C 106.88 371.00 109.59 371.25 112.27 371.66 C 110.67 372.56 108.80 372.36 107.04 372.35 C 98.43 372.31 89.81 372.06 81.22 371.55 C 80.99 371.37 80.54 371.00 80.32 370.82 C 81.19 368.70 83.45 367.61 85.13 366.21 C 87.56 364.60 88.59 361.70 90.73 359.79 C 92.80 357.45 96.02 356.38 97.65 353.62 C 99.05 351.45 100.75 349.45 102.97 348.09 C 106.02 346.45 107.29 343.06 109.74 340.77 C 112.01 338.27 115.54 337.10 117.15 333.98 C 118.54 331.49 120.85 329.79 123.16 328.22 C 126.43 326.11 127.64 322.05 130.85 319.88 C 132.57 318.61 134.54 317.54 135.64 315.61 C 137.48 312.54 140.28 310.30 143.18 308.28 Z" fill="#9dc0e7"></path> <path d=" M 112.77 361.77 C 125.13 349.45 137.41 337.04 149.77 324.73 C 150.08 340.42 150.34 356.16 149.83 371.84 C 143.92 372.31 137.90 371.61 131.94 372.14 C 125.39 371.41 118.80 372.70 112.27 371.66 C 109.59 371.25 106.88 371.00 104.18 370.67 C 106.69 367.37 109.90 364.72 112.77 361.77 Z" fill="#bdd4ef"></path> <path d=" M 172.33 399.02 C 172.51 397.56 171.88 395.87 172.80 394.60 C 202.96 394.67 233.13 394.57 263.29 394.65 C 263.63 421.75 263.34 448.88 263.44 475.99 C 263.30 479.34 263.70 482.73 263.24 486.05 C 234.48 486.40 205.69 486.10 176.92 486.21 C 175.37 486.17 173.76 486.44 172.33 485.70 C 172.33 456.81 172.34 427.91 172.33 399.02 Z" fill="#82b1e2"></path> <path d=" M 281.72 394.68 C 312.25 394.58 342.78 394.60 373.31 394.67 C 373.53 424.88 373.18 455.11 373.48 485.32 C 371.19 487.39 367.53 485.44 365.13 486.21 C 338.77 486.16 312.41 486.21 286.06 486.19 C 284.55 486.05 282.68 486.72 281.59 485.31 C 281.82 455.10 281.56 424.89 281.72 394.68 Z" fill="#25366b"></path> <path d=" M 391.73 394.65 C 421.98 394.56 452.24 394.74 482.48 394.55 C 482.99 408.01 482.56 421.54 482.70 435.03 C 482.64 451.92 482.81 468.83 482.62 485.72 L 482.21 486.25 C 452.06 486.10 421.90 486.24 391.74 486.18 C 391.58 455.68 391.61 425.15 391.73 394.65 Z" fill="#101d3c"></path> <path d=" M 175.79 399.89 C 176.10 399.68 176.73 399.28 177.04 399.08 C 197.60 399.35 218.28 398.38 238.75 400.19 C 238.41 401.76 236.82 402.67 235.80 403.80 C 231.56 407.23 228.45 411.81 224.13 415.16 C 220.79 418.78 217.45 422.42 213.68 425.61 C 209.26 430.90 203.77 435.12 199.31 440.38 C 194.28 444.66 190.22 449.93 185.15 454.18 C 182.51 456.69 180.44 460.02 177.18 461.77 C 176.48 460.65 176.20 459.34 176.22 458.04 C 175.54 438.67 175.61 419.27 175.79 399.89 Z" fill="#a5c3e8"></path> <path d=" M 177.11 400.08 C 189.37 399.62 201.69 399.86 213.98 400.02 C 215.27 400.30 217.20 399.65 218.03 400.99 C 213.61 406.49 208.21 411.22 203.10 416.10 C 194.86 425.41 185.17 433.38 177.17 442.92 C 176.23 434.65 176.81 426.30 176.65 418.00 C 176.89 412.04 176.09 405.94 177.11 400.08 Z" fill="#bdd4ef"></path> </svg>
	</div>
</section>